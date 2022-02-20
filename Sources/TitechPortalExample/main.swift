import TitechPortalKit
import Foundation

let username = "00B00000"
let password = "passw0rd&"
let matrixcode: [TitechPortalMatrix: String] = [
    .a1: "A",
    .a2: "A",
    .a3: "A",
    .a4: "A",
    .a5: "A",
    .a6: "A",
    .a7: "A",
    .b1: "A",
    .b2: "A",
    .b3: "A",
    .b4: "A",
    .b5: "A",
    .b6: "A",
    .b7: "A",
    .c1: "A",
    .c2: "A",
    .c3: "A",
    .c4: "A",
    .c5: "A",
    .c6: "A",
    .c7: "A",
    .d1: "A",
    .d2: "A",
    .d3: "A",
    .d4: "A",
    .d5: "A",
    .d6: "A",
    .d7: "A",
    .e1: "A",
    .e2: "A",
    .e3: "A",
    .e4: "A",
    .e5: "A",
    .e6: "A",
    .e7: "A",
    .f1: "A",
    .f2: "A",
    .f3: "A",
    .f4: "A",
    .f5: "A",
    .f6: "A",
    .f7: "A",
    .g1: "A",
    .g2: "A",
    .g3: "A",
    .g4: "A",
    .g5: "A",
    .g6: "A",
    .g7: "A",
    .h1: "A",
    .h2: "A",
    .h3: "A",
    .h4: "A",
    .h5: "A",
    .h6: "A",
    .h7: "A",
    .i1: "A",
    .i2: "A",
    .i3: "A",
    .i4: "A",
    .i5: "A",
    .i6: "A",
    .i7: "A",
    .j1: "A",
    .j2: "A",
    .j3: "A",
    .j4: "A",
    .j5: "A",
    .j6: "A",
    .j7: "A"
]

// Debugサーバで検証するときはこちらを使う
// TitechPortal.changeToMockServer()

let portal = TitechPortal(urlSession: .shared)

Task {
    do {
        try await portal.login(
            account: TitechPortalAccount(
                username: username,
                password: password,
                matrixcode: matrixcode
            )
        )
        exit(0)
    } catch {
        print(error)
        exit(1)
    }
}

dispatchMain()
