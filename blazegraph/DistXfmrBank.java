//	----------------------------------------------------------
//	Copyright (c) 2017, Battelle Memorial Institute
//	All rights reserved.
//	----------------------------------------------------------

// package gov.pnnl.gridlabd.cim;

import java.io.*;
import org.apache.jena.query.*;
import java.util.HashMap;

public class DistXfmrBank extends DistComponent {
	static final String szQUERY =
		"SELECT ?pname ?vgrp ?tname WHERE {"+
		" ?p r:type c:PowerTransformer."+
		" ?p c:IdentifiedObject.name ?pname."+
		" ?p c:PowerTransformer.vectorGroup ?vgrp."+
		" ?t c:TransformerTank.PowerTransformer ?p."+
		" ?t c:IdentifiedObject.name ?tname"+
		"} ORDER BY ?pname ?tname";

	static final String szCountQUERY =
		"SELECT ?key (count(?tank) as ?count) WHERE {"+
		" ?tank c:TransformerTank.PowerTransformer ?pxf."+
		" ?pxf c:IdentifiedObject.name ?key"+
		"} GROUP BY ?key ORDER BY ?key";

	public String pname;
	public String vgrp;
	public String[] tname;

	public int size;

	private void SetSize (int val) {
		size = val;
		tname = new String[size];
	}

	public DistXfmrBank (ResultSet results, HashMap<String,Integer> map) {
		if (results.hasNext()) {
			QuerySolution soln = results.next();
			pname = GLD_Name (soln.get("?pname").toString(), false);
			vgrp = soln.get("?vgrp").toString();
			SetSize (map.get(pname));
			for (int i = 0; i < size; i++) {
				tname[i] = GLD_Name (soln.get("?tname").toString(), false);
				if ((i + 1) < size) {
					soln = results.next();
				}
			}
		}		
	}

	public String DisplayString() {
		StringBuilder buf = new StringBuilder ("");
		buf.append (pname + " vgrp=" + vgrp);
		for (int i = 0; i < size; i++) {
			buf.append ("\n  tname=" + tname[i]);
		}
		return buf.toString();
	}

	public String GetKey() {
		return pname;
	}
}

