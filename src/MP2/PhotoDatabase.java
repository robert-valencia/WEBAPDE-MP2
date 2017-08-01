package MP2;

import java.util.*;

public class PhotoDatabase {
	public static ArrayList<Photo> photoBase = new ArrayList<Photo>();
	public static PhotoDatabase PhotoDatabase = new PhotoDatabase();
	private PhotoDatabase(){
		photoBase.add(new Photo("private", 1, "http://i.imgur.com/4YcevDK.jpg","http://i.imgur.com/Ylu23zJ.jpg" ,"Coding" , "Screen of code.", "rob", new String[]{"irl", "code"}, new String[]{"spencer"}));
		photoBase.add(new Photo("private", 2, "http://imgur.com/7ovLojg.jpg", "http://i.imgur.com/WS8Ctnc.jpg", "Desert Puzzle", "Deltascape v3.0 mechanic.", "rob", new String[]{"game", "final fantasy xiv"}, new String[]{"spencer"}));
		photoBase.add(new Photo("public", 3, "http://imgur.com/cC27rlE.jpg", "http://i.imgur.com/QCRP4oT.png", "Tokoha - Kumi Hi5", "Cardfight Vanguard screencap.", "rob", new String[]{"anime", "vanguard"}, new String[]{"spencer"}));
		photoBase.add(new Photo("public",4, "http://i.imgur.com/HiRiXOo.jpg", "http://i.imgur.com/JlfSOUr.jpg", "Grimgar Sad Scene", "A sad scene from Grimgar", "rob", new String[]{"anime", "grimgar of fantasy and ash"}, new String[]{"marata"}));
		photoBase.add(new Photo("public",5, "http://i.imgur.com/jO6Ts2i.jpg", "http://i.imgur.com/DmzdUto.jpg", "Erased", "I just said that out loud.", "rob", new String[]{"anime", "erased"}, new String[]{"marata"}));
		photoBase.add(new Photo("private", 6, "http://i.imgur.com/s32ep1U.jpg", "http://i.imgur.com/ZafvsyC.jpg", "Bravely Second - Catmancer Job", "Catmancer anyone?", "spencer", new String[]{"game", "bravely second"}, new String[]{"marata"}));
		photoBase.add(new Photo("private", 7, "http://i.imgur.com/iuchLWF.jpg", "http://i.imgur.com/80gFnpC.jpg", "Stormblood Title", "The title screen for the new FFXIV expansion.", "spencer", new String[]{"game", "final fantasy xiv"}, new String[]{"marata"}));
		photoBase.add(new Photo("public",8, "http://i.imgur.com/a8jziFS.jpg", "http://i.imgur.com/x2FaN6s.jpg", "Gardevoir EX SCR", "Online luck = good. Offline luck = not so good.", "spencer", new String[]{"game", "pokemon"}, new String[]{"marata"}));
		photoBase.add(new Photo("public",9, "http://i.imgur.com/YSZMNXI.jpg", "http://i.imgur.com/8RSMxFa.jpg", "Fire Emblem Fates Wallpaper", "Collection of characters from Fire Emblem Fates.", "spencer", new String[]{"game","fire emblem fates"}, new String[]{"rob"}));
		photoBase.add(new Photo("public",10, "http://i.imgur.com/1sXP1oO.jpg", "http://i.imgur.com/Zpo5Cwz.jpg", "Midoriya Shocked", "RIP Midoriya's dreams.", "spencer", new String[]{"anime","my hero academy"}, new String[]{"rob"}));
		photoBase.add(new Photo("private", 11, "http://i.imgur.com/bfzKcjM.jpg", "http://i.imgur.com/h7r4KLM.jpg", "Dark Souls III Dungeon", "Spooky scary.", "marata", new String[]{"game","dark souls 3"}, new String[]{"rob"}));
		photoBase.add(new Photo("private", 12, "http://i.imgur.com/3sXhGmq.jpg", "http://i.imgur.com/I2cSA9b.jpg", "Yohane", "Meme girl.", "marata", new String[]{"anime","love live sunshine"}, new String[]{"rob"}));
		photoBase.add(new Photo("public",13, "http://i.imgur.com/USFY0Zp.jpg", "http://i.imgur.com/sWuzVON.jpg", "Jet Set Radio Title", "Dreamcast classic.", "marata", new String[]{"game","jet set radio"}, new String[]{"rob"}));
		photoBase.add(new Photo("public",14, "http://i.imgur.com/fuCkt6z.jpg", "http://i.imgur.com/3ABPVSu.jpg", "Jerome Came Out", "Good friend Jerome.", "marata", new String[]{"irl","jerome"}, new String[]{"spencer"}));
		photoBase.add(new Photo("public",15, "http://i.imgur.com/klbhQV2.jpg", "http://i.imgur.com/GBNtlol.jpg", "Persona 5 - Kamodshida's Castle", "Taken from PS4 remote play.", "marata", new String[]{"game","persona 5"}, new String[]{"spencer"}));
	}
	
	public static PhotoDatabase getInstance(){
		return PhotoDatabase;
	}
}
