{
  pkgs,
  config,
  ...
}: {
  programs = {
    brave = {
      enable = true;
      extensions = [
        {id = "cjpalhdlnbpafiamejdnhcphjbkeiagm";} # uBlock Origin
	{id = "hjdoplcnndgiblooccencgcggcoihigg";} # ToS; Didn't read 
	{id = "gebbhagfogifgggkldgodflihgfeippi";} # Return Dislike Button
	{id = "khncfooichmfjbepaaaebmommgaepoid";} # Unhook YouTube	      
	{id = "fmkadmapgofadopljbjfkapdkoienihi";} # React Developer Tools	      
	{id = "ohaiaoliglhljiamagbagenmmcdfgkfe";} # Glassdoor Bypass	      
	{id = "mnjggcdmjocbbbhaepdhchncahnbgone";} # SponsorBlock	      
	{id = "cmeikcgfecnhojcbfapbmpbjgllklcbi";} # Hive AI Detector	      
	{id = "ponfpcnoihfmfllpaingbgckeeldkhle";} # Enchancer for  YouTube	      
	{id = "bmanlajnpdncmhfkiccmbgeocgbncfln";} # Slinky Elegancki
];
    };

  };
}
