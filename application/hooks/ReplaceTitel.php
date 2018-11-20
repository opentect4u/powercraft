<?php
class ReplaceTitel {
  public function replaceValue()
  {
      // load the instance
      $this->CI =& get_instance();
       
      // get the actual output
      $titel = $this->CI->output->get_output();
      
       
      // replace the tokens
      
      $titel = str_replace('SYNERGIC SOFTEK SOLUTIONS PVT. LTD.','POWERCRAFT ELECTRONICS PVT. LTD.', $titel);
       
      $titel = str_replace('55 D, DESAPRAN SASHMAL ROAD','Plot No 47, Phase 3, Sector-D, 47, Miraj Rd, Shri Laxmi Co-op. Industrial Estate, Maharashtra 416118', $titel);
       
      $titel  = str_replace('KOLKATA-33', '', $titel);
       
      // set the output
      echo $titel;
      
      return;
  }
}