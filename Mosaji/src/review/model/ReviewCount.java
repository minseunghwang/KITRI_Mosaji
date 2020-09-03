package review.model;

public class ReviewCount {

	private float dryStar;
	private int dryCount;

	private float oilyStar;
	private int oilyCount;

	private float normalStar;
	private int normalCount;

	private float complexitiesStar;
	private int complexitiesCount;

	private float sensitiveStar;
	private int sensitiveCount;
	
	

	public ReviewCount(float dryStar, int dryCount, float oilyStar, int oilyCount, float normalStar, int normalCount,
			float complexitiesStar, int complexitiesCount, float sensitiveStar, int sensitiveCount) {
		super();
		this.dryStar = dryStar;
		this.dryCount = dryCount;
		this.oilyStar = oilyStar;
		this.oilyCount = oilyCount;
		this.normalStar = normalStar;
		this.normalCount = normalCount;
		this.complexitiesStar = complexitiesStar;
		this.complexitiesCount = complexitiesCount;
		this.sensitiveStar = sensitiveStar;
		this.sensitiveCount = sensitiveCount;
	}



	public float getDryStar() {
		return dryStar;
	}



	public void setDryStar(float dryStar) {
		this.dryStar = dryStar;
	}



	public int getDryCount() {
		return dryCount;
	}



	public void setDryCount(int dryCount) {
		this.dryCount = dryCount;
	}



	public float getOilyStar() {
		return oilyStar;
	}



	public void setOilyStar(float oilyStar) {
		this.oilyStar = oilyStar;
	}



	public int getOilyCount() {
		return oilyCount;
	}



	public void setOilyCount(int oilyCount) {
		this.oilyCount = oilyCount;
	}



	public float getNormalStar() {
		return normalStar;
	}



	public void setNormalStar(float normalStar) {
		this.normalStar = normalStar;
	}



	public int getNormalCount() {
		return normalCount;
	}



	public void setNormalCount(int normalCount) {
		this.normalCount = normalCount;
	}



	public float getComplexitiesStar() {
		return complexitiesStar;
	}



	public void setComplexitiesStar(float complexitiesStar) {
		this.complexitiesStar = complexitiesStar;
	}



	public int getComplexitiesCount() {
		return complexitiesCount;
	}



	public void setComplexitiesCount(int complexitiesCount) {
		this.complexitiesCount = complexitiesCount;
	}



	public float getSensitiveStar() {
		return sensitiveStar;
	}



	public void setSensitiveStar(float sensitiveStar) {
		this.sensitiveStar = sensitiveStar;
	}



	public int getSensitiveCount() {
		return sensitiveCount;
	}



	public void setSensitiveCount(int sensitiveCount) {
		this.sensitiveCount = sensitiveCount;
	}



	@Override
	public String toString() {
		return "ReviewCount [dryStar=" + dryStar + ", dryCount=" + dryCount + ", oilyStar=" + oilyStar + ", oilyCount="
				+ oilyCount + ", normalStar=" + normalStar + ", normalCount=" + normalCount + ", complexitiesStar="
				+ complexitiesStar + ", complexitiesCount=" + complexitiesCount + ", sensitiveStar=" + sensitiveStar
				+ ", sensitiveCount=" + sensitiveCount + "]";
	}

	
	
	
	
	
}
