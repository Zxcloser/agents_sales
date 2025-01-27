import MySQLdb as mdb
import sys
from PyQt6.QtWidgets import QApplication, QMainWindow, QWidget, QLabel, QVBoxLayout, QHBoxLayout
from PyQt6.QtGui import QPixmap


class MainWindow(QMainWindow):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.setGeometry(512, 100, 800, 800)
        self.setWindowTitle("Agents")

        self.conn = mdb.connect(host="localhost", user="root", passwd="root", db="Sales")
        self.curs = self.conn.cursor()

        self.central_widget = QWidget(self)
        self.setCentralWidget(self.central_widget)

        self.main_layout = QVBoxLayout(self.central_widget)
        self.show_agents()

    def show_agents(self):
        self.curs.execute("SELECT Logo, type_id, title, phone, priority FROM agents LIMIT 5;")
        result = self.curs.fetchall()

        for i, res in enumerate(result):
            print(res[0])
            logo_path = res[0]
            type_id = res[1]
            title = res[2]
            phone = res[3]
            priority = res[4]

            if i % 2 == 0:
                self.h_layout = QHBoxLayout()

            label = QLabel(self)
            pixmap = QPixmap(logo_path)
            label.setPixmap(pixmap)
            label.setScaledContents(True)
            label.setFixedSize(100, 100)
            self.h_layout.addWidget(label)

            data_label = QLabel(self)
            data_text = f"Type ID: {type_id}\nTitle: {title}\nPhone: {phone}\nPriority: {priority}"
            data_label.setText(data_text)
            self.h_layout.addWidget(data_label)
            if i % 2 == 1 or i == len(result) - 1:
                self.main_layout.addLayout(self.h_layout)


app = QApplication(sys.argv)

window = MainWindow()
window.show()

app.exec()