INSERT INTO modes (name, rprt, dxcc, enabled, submodes) VALUES
('C4FM', '59', 'PHONE', true, NULL),
('CHIP', NULL, 'DIGITAL', true, '["CHIP64", "CHIP128"]'),
('CLO', NULL, 'DIGITAL', true, NULL),
('FAX', NULL, 'DIGITAL', true, NULL),
('ISCAT', NULL, 'DIGITAL', true, NULL),
('JT4', NULL, 'DIGITAL', true, '["JT4A", "JT4B", "JT4C", "JT4D", "JT4E", "JT4F", "JT4G"]'),
('PAX', NULL, 'DIGITAL', true, '["PAX2"]'),
('PSK2', NULL, 'DIGITAL', true, NULL),
('Q15', NULL, 'DIGITAL', true, NULL),
('QRA64', NULL, 'DIGITAL', true, '["QRA64A", "QRA64B", "QRA64C", "QRA64D", "QRA64E"]'),
('ROS', NULL, 'DIGITAL', true, '["ROS-EME", "ROS-HF", "ROS-MF"]'),
('RTTYM', NULL, 'DIGITAL', true, NULL),
('T10', NULL, 'DIGITAL', true, NULL),
('THOR', NULL, 'DIGITAL', true, '["THOR-M", "THOR4", "THOR5", "THOR8", "THOR11", "THOR16", "THOR22", "THOR25X4", "THOR50X1", "THOR50X2", "THOR100"]'),
('THRB', NULL, 'DIGITAL', true, '["THRBX", "THRBX1", "THRBX2", "THRBX4", "THROB1", "THROB2", "THROB4"]'),
('TOR', NULL, 'DIGITAL', true, '["TOR", "AMTORFEC", "GTOR", "NAVTEX", "SITORB"]'),
('V4', NULL, 'DIGITAL', true, NULL),
('VOI', NULL, 'DIGITAL', true, NULL),
('WINMOR', NULL, 'DIGITAL', true, NULL),
('WSPR', NULL, 'DIGITAL', true, NULL);

UPDATE modes SET submodes='["DOM-M", "DOM4", "DOM5", "DOM8", "DOM11", "DOM16", "DOM22", "DOM44", "DOM88", "DOMINOEX", "DOMINOF"]'
WHERE name = 'DOMINO';

UPDATE modes SET submodes='["FMHELL", "FSKHELL", "HELL80", "HELLX5", "HELLX9", "HFSK", "PSKHELL", "SLOWHELL"]'
WHERE name = 'HELL';

UPDATE modes SET submodes='["FSQCALL", "FST4", "FST4W", "FT4", "JS8", "JTMS", "MFSK4", "MFSK8", "MFSK11", "MFSK16", "MFSK22", "MFSK31", "MFSK32", "MFSK64", "MFSK64L", "MFSK128", "MFSK128L", "Q65"]'
WHERE name = 'MFSK';

UPDATE modes SET submodes='["8PSK125", "8PSK125F", "8PSK125FL", "8PSK250", "8PSK250F", "8PSK250FL", "8PSK500", "8PSK500F", "8PSK1000", "8PSK1000F", "8PSK1200F", "FSK31", "PSK10", "PSK31", "PSK63", "PSK63F", "PSK63RC4", "PSK63RC5", "PSK63RC10", "PSK63RC20", "PSK63RC32", "PSK125", "PSK125C12", "PSK125R", "PSK125RC10", "PSK125RC12", "PSK125RC16", "PSK125RC4", "PSK125RC5", "PSK250", "PSK250C6", "PSK250R", "PSK250RC2", "PSK250RC3", "PSK250RC5", "PSK250RC6", "PSK250RC7", "PSK500", "PSK500C2", "PSK500C4", "PSK500R", "PSK500RC2", "PSK500RC3", "PSK500RC4", "PSK800C2", "PSK800RC2", "PSK1000", "PSK1000C2", "PSK1000R", "PSK1000RC2", "PSKAM10", "PSKAM31", "PSKAM50", "PSKFEC31", "QPSK31", "QPSK63", "QPSK125", "QPSK250", "QPSK500", "SIM31"]'
WHERE name = 'PSK';


UPDATE contacts SET name_intl = name WHERE name_intl IS NULL;
UPDATE contacts SET qth_intl = qth WHERE qth_intl IS NULL;
UPDATE contacts SET comment_intl = comment WHERE comment_intl IS NULL;
UPDATE contacts SET my_antenna_intl = my_antenna WHERE my_antenna_intl IS NULL;
UPDATE contacts SET my_city_intl = my_city WHERE my_city_intl IS NULL;
UPDATE contacts SET my_rig_intl = my_rig WHERE my_rig_intl IS NULL;
UPDATE contacts SET my_sig_intl = my_sig WHERE my_sig_intl IS NULL;
UPDATE contacts SET my_sig_info_intl = my_sig_info WHERE my_sig_info_intl IS NULL;
UPDATE contacts SET sig_intl = sig WHERE sig_intl IS NULL;
UPDATE contacts SET sig_info_intl = sig_info WHERE sig_info_intl IS NULL;
