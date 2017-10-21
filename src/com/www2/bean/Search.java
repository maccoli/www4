package com.www2.bean;

public class Search {
        private String vname;
        private String coarticle;
        
        
        public Search(){
        	super();
        }
        
public String getCoarticle() {
			return coarticle;
		}
		public void setCoarticle(String coarticle) {
			this.coarticle = coarticle;
		}

		@Override
		public String toString() {
			return "Search [coarticle=" + coarticle + "]";
		}
		public Search(String string) {
			// TODO Auto-generated constructor stub
			this.vname = string;
		}
		
		

		public Search(String vname, String coarticle) {
			super();
			this.vname = vname;
			this.coarticle = coarticle;
		}

		public String getVname() {
			return vname;
		}

		public void setVname(String vname) {
			this.vname = vname;
		}
       
        
}
