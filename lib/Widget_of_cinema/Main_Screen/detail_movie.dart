class DetailMovie {
  String title = "";
  String image = "";
  String time = "";
  String release = "";

  DetailMovie({
    this.title = "no title",
    this.image = "no image",
    this.time = "no time",
    this.release = "no release",

  });
}

List<DetailMovie> movieList = [
  DetailMovie(
      image:
          ("https://scontent.fpnh11-1.fna.fbcdn.net/v/t39.30808-6/407476765_877869880730244_8321803507845749790_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=86c6b0&_nc_eui2=AeHZnhU0r9suYXDBOl7tcqjhmYwu49tMIuuZjC7j20wi61Fo0CtkSlY_3CPqcyK1yS2Rh6UBpKFXrPkj3P_9AKuk&_nc_ohc=Dpp3FMjJjyQQ7kNvgGMd_X9&_nc_zt=23&_nc_ht=scontent.fpnh11-1.fna&_nc_gid=A32scK3DygRAJT78ks9rPDp&oh=00_AYDdk8bnOCQSwlyOssRtADCXhU5fP5vAkk_zc5WtgR-2rg&oe=678FA733"),
      title: "អឹចន ម៉ែដោះ",
      time: "1h 30m",
      release: "2024",
    ),
  DetailMovie(
      image:
          ("https://scontent.fpnh11-1.fna.fbcdn.net/v/t39.30808-6/473697885_1032810322217692_4919407511714168852_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeGxCNcMsUU68Sqps4apWu_YCTS3dtou6ncJNLd22i7qd0eTUriqTNQuDZfezKJegFzmbP5bFoviyWdxnVHlStE5&_nc_ohc=zpSYRTpmLGUQ7kNvgG7BACX&_nc_zt=23&_nc_ht=scontent.fpnh11-1.fna&_nc_gid=AtldnQlZyK5wc0Si2axfd1i&oh=00_AYCg7vF8GNtObtSV3oD4C6EpDuJX0U4AQWKE2nRwIbCHsQ&oe=678FB540"),
      title: "លោកតា​​ ​២១",
      time: "1h 30m",
      release: "2025",
    ),
  DetailMovie(
      image:
          ("https://scontent.fpnh11-1.fna.fbcdn.net/v/t39.30808-6/474435713_1035911578574233_900151225836218710_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeFV-lGTY6nT8rjPzVT1ur53DTca1VTtyu4NNxrVVO3K7qQDrlBSIJa3GAmrLA8WmTTBjRlKldNfeVbsyXvcRKqu&_nc_ohc=mfQ0Jjtvzd0Q7kNvgFyEpIa&_nc_zt=23&_nc_ht=scontent.fpnh11-1.fna&_nc_gid=AoGdTOZjjXaWXc-EhZP3iRd&oh=00_AYAchU-CnWfWLKeGoiWlhbEOEfdMPyU7CLTFOmikAB9TRw&oe=6794F4D9"),
      title: "មន្ទីពេទ្យខ្មោច",
      time: "1h 30m",
      release: "2024",
    ),
  DetailMovie(
      image:
          ("https://scontent.fpnh11-1.fna.fbcdn.net/v/t39.30808-6/473720069_1035417518623639_3512189328110681666_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeGSQQZBMRyPMPMt-GWk6VbOPf626vLssVg9_rbq8uyxWGrUSZTxAU2PQCLo30gylvlPW6eosG4JTo98iwN5fIvs&_nc_ohc=4NbkqFaZoKgQ7kNvgFxpdqp&_nc_zt=23&_nc_ht=scontent.fpnh11-1.fna&_nc_gid=ARaCMc4IJUP74Y6dB1cgkg1&oh=00_AYDXOp0Xf5r9Yy2FGtowuHnEWZnD-Kp2r-x3zrQA3ht8_A&oe=6794C792"),
      title: "ជីវិតអ្នកម៉ាក់ Single",
      time: "1h 30m",
      release: "2024",
    ),
  DetailMovie(
      image:
          ("https://scontent.fpnh11-1.fna.fbcdn.net/v/t39.30808-6/473998381_1034752525356805_8719435885317821189_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeHLU5tp5BT3IedDoRniWoNU_dKBFAf-XPP90oEUB_5c87eOF7AiM9ezbYLTiUZ8OLt5Tzk5cgrTjk-d7JQqMYk9&_nc_ohc=DWCm2M_p1hcQ7kNvgE_YuNg&_nc_zt=23&_nc_ht=scontent.fpnh11-1.fna&_nc_gid=AB_E6POE6pB6j-9Xb-DIcFe&oh=00_AYDnLwkYHujbmfjzcCQ4J-LgDcYZ_xAwA3DAeiT8lHbjow&oe=6794DA5D"),
      title: "ល្បែងពួនខ្មោចក្នុងសាលា",
      time: "1h 30m",
      release: "2025",
    ),
  DetailMovie(
      image:
          ("https://scontent.fpnh11-1.fna.fbcdn.net/v/t39.30808-6/474039298_1034409365391121_3032392223801136398_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeFonkLlwy_B5wYtUDvHBZxE5cz98lL_0dvlzP3yUv_R27_2kPh4AnDLsgsjsfG2EF7t2GBrPKQUCWZ3H2xl_lOt&_nc_ohc=l8QThjzN0gIQ7kNvgEi1zCl&_nc_zt=23&_nc_ht=scontent.fpnh11-1.fna&_nc_gid=AbZNskNE9mc0GuSyr2OBLFN&oh=00_AYCadbBwQoDF4pBhCmdQ5Lm3ThdQw2kOGdqeB8NjRaszag&oe=6794CE92"),
      title: "វិញ្ញាណសណ្ឋិតអ្នកម៉ែ 2",
      time: "1h 30m",
      release: "2025",
    ),
];
