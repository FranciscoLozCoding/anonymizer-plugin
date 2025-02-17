FROM waggle/plugin-base:1.1.1-ml

WORKDIR /app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

ENTRYPOINT ["python3", "anonymizer/bin/anonymize.py --input /path/to/input_folder --image-output /path/to/output_folder --weights /path/to/store/weights"]
