# ZMK 0.4 validation

The `codex/zmk-0.4-baseline` branch is a hardware-validation branch. A green CI
matrix proves build compatibility only and does not authorize merging to
`main`.

Before promotion, verify:

- left/right split pairing and normal key input for both US and JIS builds;
- left analog stick movement, scrolling, runtime processing, and Studio RPC;
- right PMW3610 movement, scrolling, wake behavior, and split transport;
- dongle display and RGB LED widget behavior on the left central;
- CDC UF2 entry and USB logging on the left central;
- battery reporting and voltage oversampling;
- idle sleep and reconnect behavior.

Record the tested hardware revision and result on the pull request before
marking it ready for review.
