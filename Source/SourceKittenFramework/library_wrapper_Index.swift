#if !os(Linux)
#if SWIFT_PACKAGE
import Clang_C
#endif
private let library = toolchainLoader.load(path: "libclang.dylib")
internal let clang_createIndex: @convention(c) (Int32, Int32) -> (CXIndex!) = library.load(symbol: "clang_createIndex")
internal let clang_disposeIndex: @convention(c) (CXIndex?) -> () = library.load(symbol: "clang_disposeIndex")
internal let clang_CXIndex_setGlobalOptions: @convention(c) (CXIndex?, UInt32) -> () = library.load(symbol: "clang_CXIndex_setGlobalOptions")
internal let clang_CXIndex_getGlobalOptions: @convention(c) (CXIndex?) -> (UInt32) = library.load(symbol: "clang_CXIndex_getGlobalOptions")
internal let clang_getFileName: @convention(c) (CXFile?) -> (CXString) = library.load(symbol: "clang_getFileName")
internal let clang_getFileTime: @convention(c) (CXFile?) -> (time_t) = library.load(symbol: "clang_getFileTime")
internal let clang_getFileUniqueID: @convention(c) (CXFile?, UnsafeMutablePointer<CXFileUniqueID>?) -> (Int32) = library.load(symbol: "clang_getFileUniqueID")
internal let clang_isFileMultipleIncludeGuarded: @convention(c) (CXTranslationUnit?, CXFile?) -> (UInt32) = library.load(symbol: "clang_isFileMultipleIncludeGuarded")
internal let clang_getFile: @convention(c) (CXTranslationUnit?, UnsafePointer<Int8>?) -> (CXFile!) = library.load(symbol: "clang_getFile")
internal let clang_File_isEqual: @convention(c) (CXFile?, CXFile?) -> (Int32) = library.load(symbol: "clang_File_isEqual")
internal let clang_getNullLocation: @convention(c) () -> (CXSourceLocation) = library.load(symbol: "clang_getNullLocation")
internal let clang_equalLocations: @convention(c) (CXSourceLocation, CXSourceLocation) -> (UInt32) = library.load(symbol: "clang_equalLocations")
internal let clang_getLocation: @convention(c) (CXTranslationUnit?, CXFile?, UInt32, UInt32) -> (CXSourceLocation) = library.load(symbol: "clang_getLocation")
internal let clang_getLocationForOffset: @convention(c) (CXTranslationUnit?, CXFile?, UInt32) -> (CXSourceLocation) = library.load(symbol: "clang_getLocationForOffset")
internal let clang_Location_isInSystemHeader: @convention(c) (CXSourceLocation) -> (Int32) = library.load(symbol: "clang_Location_isInSystemHeader")
internal let clang_Location_isFromMainFile: @convention(c) (CXSourceLocation) -> (Int32) = library.load(symbol: "clang_Location_isFromMainFile")
internal let clang_getNullRange: @convention(c) () -> (CXSourceRange) = library.load(symbol: "clang_getNullRange")
internal let clang_getRange: @convention(c) (CXSourceLocation, CXSourceLocation) -> (CXSourceRange) = library.load(symbol: "clang_getRange")
internal let clang_equalRanges: @convention(c) (CXSourceRange, CXSourceRange) -> (UInt32) = library.load(symbol: "clang_equalRanges")
internal let clang_Range_isNull: @convention(c) (CXSourceRange) -> (Int32) = library.load(symbol: "clang_Range_isNull")
internal let clang_getExpansionLocation: @convention(c) (CXSourceLocation, UnsafeMutablePointer<CXFile?>?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?) -> () = library.load(symbol: "clang_getExpansionLocation")
internal let clang_getPresumedLocation: @convention(c) (CXSourceLocation, UnsafeMutablePointer<CXString>?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?) -> () = library.load(symbol: "clang_getPresumedLocation")
internal let clang_getInstantiationLocation: @convention(c) (CXSourceLocation, UnsafeMutablePointer<CXFile?>?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?) -> () = library.load(symbol: "clang_getInstantiationLocation")
internal let clang_getSpellingLocation: @convention(c) (CXSourceLocation, UnsafeMutablePointer<CXFile?>?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?) -> () = library.load(symbol: "clang_getSpellingLocation")
internal let clang_getFileLocation: @convention(c) (CXSourceLocation, UnsafeMutablePointer<CXFile?>?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?) -> () = library.load(symbol: "clang_getFileLocation")
internal let clang_getRangeStart: @convention(c) (CXSourceRange) -> (CXSourceLocation) = library.load(symbol: "clang_getRangeStart")
internal let clang_getRangeEnd: @convention(c) (CXSourceRange) -> (CXSourceLocation) = library.load(symbol: "clang_getRangeEnd")
internal let clang_getSkippedRanges: @convention(c) (CXTranslationUnit?, CXFile?) -> (UnsafeMutablePointer<CXSourceRangeList>!) = library.load(symbol: "clang_getSkippedRanges")
internal let clang_disposeSourceRangeList: @convention(c) (UnsafeMutablePointer<CXSourceRangeList>?) -> () = library.load(symbol: "clang_disposeSourceRangeList")
internal let clang_getNumDiagnosticsInSet: @convention(c) (CXDiagnosticSet?) -> (UInt32) = library.load(symbol: "clang_getNumDiagnosticsInSet")
internal let clang_getDiagnosticInSet: @convention(c) (CXDiagnosticSet?, UInt32) -> (CXDiagnostic!) = library.load(symbol: "clang_getDiagnosticInSet")
internal let clang_loadDiagnostics: @convention(c) (UnsafePointer<Int8>?, UnsafeMutablePointer<CXLoadDiag_Error>?, UnsafeMutablePointer<CXString>?) -> (CXDiagnosticSet!) = library.load(symbol: "clang_loadDiagnostics")
internal let clang_disposeDiagnosticSet: @convention(c) (CXDiagnosticSet?) -> () = library.load(symbol: "clang_disposeDiagnosticSet")
internal let clang_getChildDiagnostics: @convention(c) (CXDiagnostic?) -> (CXDiagnosticSet!) = library.load(symbol: "clang_getChildDiagnostics")
internal let clang_getNumDiagnostics: @convention(c) (CXTranslationUnit?) -> (UInt32) = library.load(symbol: "clang_getNumDiagnostics")
internal let clang_getDiagnostic: @convention(c) (CXTranslationUnit?, UInt32) -> (CXDiagnostic!) = library.load(symbol: "clang_getDiagnostic")
internal let clang_getDiagnosticSetFromTU: @convention(c) (CXTranslationUnit?) -> (CXDiagnosticSet!) = library.load(symbol: "clang_getDiagnosticSetFromTU")
internal let clang_disposeDiagnostic: @convention(c) (CXDiagnostic?) -> () = library.load(symbol: "clang_disposeDiagnostic")
internal let clang_formatDiagnostic: @convention(c) (CXDiagnostic?, UInt32) -> (CXString) = library.load(symbol: "clang_formatDiagnostic")
internal let clang_defaultDiagnosticDisplayOptions: @convention(c) () -> (UInt32) = library.load(symbol: "clang_defaultDiagnosticDisplayOptions")
internal let clang_getDiagnosticSeverity: @convention(c) (CXDiagnostic?) -> (CXDiagnosticSeverity) = library.load(symbol: "clang_getDiagnosticSeverity")
internal let clang_getDiagnosticLocation: @convention(c) (CXDiagnostic?) -> (CXSourceLocation) = library.load(symbol: "clang_getDiagnosticLocation")
internal let clang_getDiagnosticSpelling: @convention(c) (CXDiagnostic?) -> (CXString) = library.load(symbol: "clang_getDiagnosticSpelling")
internal let clang_getDiagnosticOption: @convention(c) (CXDiagnostic?, UnsafeMutablePointer<CXString>?) -> (CXString) = library.load(symbol: "clang_getDiagnosticOption")
internal let clang_getDiagnosticCategory: @convention(c) (CXDiagnostic?) -> (UInt32) = library.load(symbol: "clang_getDiagnosticCategory")
internal let clang_getDiagnosticCategoryName: @convention(c) (UInt32) -> (CXString) = library.load(symbol: "clang_getDiagnosticCategoryName")
internal let clang_getDiagnosticCategoryText: @convention(c) (CXDiagnostic?) -> (CXString) = library.load(symbol: "clang_getDiagnosticCategoryText")
internal let clang_getDiagnosticNumRanges: @convention(c) (CXDiagnostic?) -> (UInt32) = library.load(symbol: "clang_getDiagnosticNumRanges")
internal let clang_getDiagnosticRange: @convention(c) (CXDiagnostic?, UInt32) -> (CXSourceRange) = library.load(symbol: "clang_getDiagnosticRange")
internal let clang_getDiagnosticNumFixIts: @convention(c) (CXDiagnostic?) -> (UInt32) = library.load(symbol: "clang_getDiagnosticNumFixIts")
internal let clang_getDiagnosticFixIt: @convention(c) (CXDiagnostic?, UInt32, UnsafeMutablePointer<CXSourceRange>?) -> (CXString) = library.load(symbol: "clang_getDiagnosticFixIt")
internal let clang_getTranslationUnitSpelling: @convention(c) (CXTranslationUnit?) -> (CXString) = library.load(symbol: "clang_getTranslationUnitSpelling")
internal let clang_createTranslationUnitFromSourceFile: @convention(c) (CXIndex?, UnsafePointer<Int8>?, Int32, UnsafePointer<UnsafePointer<Int8>?>?, UInt32, UnsafeMutablePointer<CXUnsavedFile>?) -> (CXTranslationUnit!) = library.load(symbol: "clang_createTranslationUnitFromSourceFile")
internal let clang_createTranslationUnit: @convention(c) (CXIndex?, UnsafePointer<Int8>?) -> (CXTranslationUnit!) = library.load(symbol: "clang_createTranslationUnit")
internal let clang_createTranslationUnit2: @convention(c) (CXIndex?, UnsafePointer<Int8>?, UnsafeMutablePointer<CXTranslationUnit?>?) -> (CXErrorCode) = library.load(symbol: "clang_createTranslationUnit2")
internal let clang_defaultEditingTranslationUnitOptions: @convention(c) () -> (UInt32) = library.load(symbol: "clang_defaultEditingTranslationUnitOptions")
internal let clang_parseTranslationUnit: @convention(c) (CXIndex?, UnsafePointer<Int8>?, UnsafePointer<UnsafePointer<Int8>?>?, Int32, UnsafeMutablePointer<CXUnsavedFile>?, UInt32, UInt32) -> (CXTranslationUnit!) = library.load(symbol: "clang_parseTranslationUnit")
internal let clang_parseTranslationUnit2: @convention(c) (CXIndex?, UnsafePointer<Int8>?, UnsafePointer<UnsafePointer<Int8>?>?, Int32, UnsafeMutablePointer<CXUnsavedFile>?, UInt32, UInt32, UnsafeMutablePointer<CXTranslationUnit?>?) -> (CXErrorCode) = library.load(symbol: "clang_parseTranslationUnit2")
internal let clang_defaultSaveOptions: @convention(c) (CXTranslationUnit?) -> (UInt32) = library.load(symbol: "clang_defaultSaveOptions")
internal let clang_saveTranslationUnit: @convention(c) (CXTranslationUnit?, UnsafePointer<Int8>?, UInt32) -> (Int32) = library.load(symbol: "clang_saveTranslationUnit")
internal let clang_disposeTranslationUnit: @convention(c) (CXTranslationUnit?) -> () = library.load(symbol: "clang_disposeTranslationUnit")
internal let clang_defaultReparseOptions: @convention(c) (CXTranslationUnit?) -> (UInt32) = library.load(symbol: "clang_defaultReparseOptions")
internal let clang_reparseTranslationUnit: @convention(c) (CXTranslationUnit?, UInt32, UnsafeMutablePointer<CXUnsavedFile>?, UInt32) -> (Int32) = library.load(symbol: "clang_reparseTranslationUnit")
internal let clang_getTUResourceUsageName: @convention(c) (CXTUResourceUsageKind) -> (UnsafePointer<Int8>!) = library.load(symbol: "clang_getTUResourceUsageName")
internal let clang_getCXTUResourceUsage: @convention(c) (CXTranslationUnit?) -> (CXTUResourceUsage) = library.load(symbol: "clang_getCXTUResourceUsage")
internal let clang_disposeCXTUResourceUsage: @convention(c) (CXTUResourceUsage) -> () = library.load(symbol: "clang_disposeCXTUResourceUsage")
internal let clang_getNullCursor: @convention(c) () -> (CXCursor) = library.load(symbol: "clang_getNullCursor")
internal let clang_getTranslationUnitCursor: @convention(c) (CXTranslationUnit?) -> (CXCursor) = library.load(symbol: "clang_getTranslationUnitCursor")
internal let clang_equalCursors: @convention(c) (CXCursor, CXCursor) -> (UInt32) = library.load(symbol: "clang_equalCursors")
internal let clang_Cursor_isNull: @convention(c) (CXCursor) -> (Int32) = library.load(symbol: "clang_Cursor_isNull")
internal let clang_hashCursor: @convention(c) (CXCursor) -> (UInt32) = library.load(symbol: "clang_hashCursor")
internal let clang_getCursorKind: @convention(c) (CXCursor) -> (CXCursorKind) = library.load(symbol: "clang_getCursorKind")
internal let clang_isDeclaration: @convention(c) (CXCursorKind) -> (UInt32) = library.load(symbol: "clang_isDeclaration")
internal let clang_isReference: @convention(c) (CXCursorKind) -> (UInt32) = library.load(symbol: "clang_isReference")
internal let clang_isExpression: @convention(c) (CXCursorKind) -> (UInt32) = library.load(symbol: "clang_isExpression")
internal let clang_isStatement: @convention(c) (CXCursorKind) -> (UInt32) = library.load(symbol: "clang_isStatement")
internal let clang_isAttribute: @convention(c) (CXCursorKind) -> (UInt32) = library.load(symbol: "clang_isAttribute")
internal let clang_isInvalid: @convention(c) (CXCursorKind) -> (UInt32) = library.load(symbol: "clang_isInvalid")
internal let clang_isTranslationUnit: @convention(c) (CXCursorKind) -> (UInt32) = library.load(symbol: "clang_isTranslationUnit")
internal let clang_isPreprocessing: @convention(c) (CXCursorKind) -> (UInt32) = library.load(symbol: "clang_isPreprocessing")
internal let clang_isUnexposed: @convention(c) (CXCursorKind) -> (UInt32) = library.load(symbol: "clang_isUnexposed")
internal let clang_getCursorLinkage: @convention(c) (CXCursor) -> (CXLinkageKind) = library.load(symbol: "clang_getCursorLinkage")
internal let clang_getCursorAvailability: @convention(c) (CXCursor) -> (CXAvailabilityKind) = library.load(symbol: "clang_getCursorAvailability")
internal let clang_getCursorPlatformAvailability: @convention(c) (CXCursor, UnsafeMutablePointer<Int32>?, UnsafeMutablePointer<CXString>?, UnsafeMutablePointer<Int32>?, UnsafeMutablePointer<CXString>?, UnsafeMutablePointer<CXPlatformAvailability>?, Int32) -> (Int32) = library.load(symbol: "clang_getCursorPlatformAvailability")
internal let clang_disposeCXPlatformAvailability: @convention(c) (UnsafeMutablePointer<CXPlatformAvailability>?) -> () = library.load(symbol: "clang_disposeCXPlatformAvailability")
internal let clang_getCursorLanguage: @convention(c) (CXCursor) -> (CXLanguageKind) = library.load(symbol: "clang_getCursorLanguage")
internal let clang_Cursor_getTranslationUnit: @convention(c) (CXCursor) -> (CXTranslationUnit!) = library.load(symbol: "clang_Cursor_getTranslationUnit")
internal let clang_createCXCursorSet: @convention(c) () -> (CXCursorSet!) = library.load(symbol: "clang_createCXCursorSet")
internal let clang_disposeCXCursorSet: @convention(c) (CXCursorSet?) -> () = library.load(symbol: "clang_disposeCXCursorSet")
internal let clang_CXCursorSet_contains: @convention(c) (CXCursorSet?, CXCursor) -> (UInt32) = library.load(symbol: "clang_CXCursorSet_contains")
internal let clang_CXCursorSet_insert: @convention(c) (CXCursorSet?, CXCursor) -> (UInt32) = library.load(symbol: "clang_CXCursorSet_insert")
internal let clang_getCursorSemanticParent: @convention(c) (CXCursor) -> (CXCursor) = library.load(symbol: "clang_getCursorSemanticParent")
internal let clang_getCursorLexicalParent: @convention(c) (CXCursor) -> (CXCursor) = library.load(symbol: "clang_getCursorLexicalParent")
internal let clang_getOverriddenCursors: @convention(c) (CXCursor, UnsafeMutablePointer<UnsafeMutablePointer<CXCursor>?>?, UnsafeMutablePointer<UInt32>?) -> () = library.load(symbol: "clang_getOverriddenCursors")
internal let clang_disposeOverriddenCursors: @convention(c) (UnsafeMutablePointer<CXCursor>?) -> () = library.load(symbol: "clang_disposeOverriddenCursors")
internal let clang_getIncludedFile: @convention(c) (CXCursor) -> (CXFile!) = library.load(symbol: "clang_getIncludedFile")
internal let clang_getCursor: @convention(c) (CXTranslationUnit?, CXSourceLocation) -> (CXCursor) = library.load(symbol: "clang_getCursor")
internal let clang_getCursorLocation: @convention(c) (CXCursor) -> (CXSourceLocation) = library.load(symbol: "clang_getCursorLocation")
internal let clang_getCursorExtent: @convention(c) (CXCursor) -> (CXSourceRange) = library.load(symbol: "clang_getCursorExtent")
internal let clang_getCursorType: @convention(c) (CXCursor) -> (CXType) = library.load(symbol: "clang_getCursorType")
internal let clang_getTypeSpelling: @convention(c) (CXType) -> (CXString) = library.load(symbol: "clang_getTypeSpelling")
internal let clang_getTypedefDeclUnderlyingType: @convention(c) (CXCursor) -> (CXType) = library.load(symbol: "clang_getTypedefDeclUnderlyingType")
internal let clang_getEnumDeclIntegerType: @convention(c) (CXCursor) -> (CXType) = library.load(symbol: "clang_getEnumDeclIntegerType")
internal let clang_getEnumConstantDeclValue: @convention(c) (CXCursor) -> (Int64) = library.load(symbol: "clang_getEnumConstantDeclValue")
internal let clang_getEnumConstantDeclUnsignedValue: @convention(c) (CXCursor) -> (UInt64) = library.load(symbol: "clang_getEnumConstantDeclUnsignedValue")
internal let clang_getFieldDeclBitWidth: @convention(c) (CXCursor) -> (Int32) = library.load(symbol: "clang_getFieldDeclBitWidth")
internal let clang_Cursor_getNumArguments: @convention(c) (CXCursor) -> (Int32) = library.load(symbol: "clang_Cursor_getNumArguments")
internal let clang_Cursor_getArgument: @convention(c) (CXCursor, UInt32) -> (CXCursor) = library.load(symbol: "clang_Cursor_getArgument")
internal let clang_Cursor_getNumTemplateArguments: @convention(c) (CXCursor) -> (Int32) = library.load(symbol: "clang_Cursor_getNumTemplateArguments")
internal let clang_Cursor_getTemplateArgumentKind: @convention(c) (CXCursor, UInt32) -> (CXTemplateArgumentKind) = library.load(symbol: "clang_Cursor_getTemplateArgumentKind")
internal let clang_Cursor_getTemplateArgumentType: @convention(c) (CXCursor, UInt32) -> (CXType) = library.load(symbol: "clang_Cursor_getTemplateArgumentType")
internal let clang_Cursor_getTemplateArgumentValue: @convention(c) (CXCursor, UInt32) -> (Int64) = library.load(symbol: "clang_Cursor_getTemplateArgumentValue")
internal let clang_Cursor_getTemplateArgumentUnsignedValue: @convention(c) (CXCursor, UInt32) -> (UInt64) = library.load(symbol: "clang_Cursor_getTemplateArgumentUnsignedValue")
internal let clang_equalTypes: @convention(c) (CXType, CXType) -> (UInt32) = library.load(symbol: "clang_equalTypes")
internal let clang_getCanonicalType: @convention(c) (CXType) -> (CXType) = library.load(symbol: "clang_getCanonicalType")
internal let clang_isConstQualifiedType: @convention(c) (CXType) -> (UInt32) = library.load(symbol: "clang_isConstQualifiedType")
internal let clang_isVolatileQualifiedType: @convention(c) (CXType) -> (UInt32) = library.load(symbol: "clang_isVolatileQualifiedType")
internal let clang_isRestrictQualifiedType: @convention(c) (CXType) -> (UInt32) = library.load(symbol: "clang_isRestrictQualifiedType")
internal let clang_getPointeeType: @convention(c) (CXType) -> (CXType) = library.load(symbol: "clang_getPointeeType")
internal let clang_getTypeDeclaration: @convention(c) (CXType) -> (CXCursor) = library.load(symbol: "clang_getTypeDeclaration")
internal let clang_getDeclObjCTypeEncoding: @convention(c) (CXCursor) -> (CXString) = library.load(symbol: "clang_getDeclObjCTypeEncoding")
internal let clang_getTypeKindSpelling: @convention(c) (CXTypeKind) -> (CXString) = library.load(symbol: "clang_getTypeKindSpelling")
internal let clang_getFunctionTypeCallingConv: @convention(c) (CXType) -> (CXCallingConv) = library.load(symbol: "clang_getFunctionTypeCallingConv")
internal let clang_getResultType: @convention(c) (CXType) -> (CXType) = library.load(symbol: "clang_getResultType")
internal let clang_getNumArgTypes: @convention(c) (CXType) -> (Int32) = library.load(symbol: "clang_getNumArgTypes")
internal let clang_getArgType: @convention(c) (CXType, UInt32) -> (CXType) = library.load(symbol: "clang_getArgType")
internal let clang_isFunctionTypeVariadic: @convention(c) (CXType) -> (UInt32) = library.load(symbol: "clang_isFunctionTypeVariadic")
internal let clang_getCursorResultType: @convention(c) (CXCursor) -> (CXType) = library.load(symbol: "clang_getCursorResultType")
internal let clang_isPODType: @convention(c) (CXType) -> (UInt32) = library.load(symbol: "clang_isPODType")
internal let clang_getElementType: @convention(c) (CXType) -> (CXType) = library.load(symbol: "clang_getElementType")
internal let clang_getNumElements: @convention(c) (CXType) -> (Int64) = library.load(symbol: "clang_getNumElements")
internal let clang_getArrayElementType: @convention(c) (CXType) -> (CXType) = library.load(symbol: "clang_getArrayElementType")
internal let clang_getArraySize: @convention(c) (CXType) -> (Int64) = library.load(symbol: "clang_getArraySize")
internal let clang_Type_getAlignOf: @convention(c) (CXType) -> (Int64) = library.load(symbol: "clang_Type_getAlignOf")
internal let clang_Type_getClassType: @convention(c) (CXType) -> (CXType) = library.load(symbol: "clang_Type_getClassType")
internal let clang_Type_getSizeOf: @convention(c) (CXType) -> (Int64) = library.load(symbol: "clang_Type_getSizeOf")
internal let clang_Type_getOffsetOf: @convention(c) (CXType, UnsafePointer<Int8>?) -> (Int64) = library.load(symbol: "clang_Type_getOffsetOf")
internal let clang_Cursor_getOffsetOfField: @convention(c) (CXCursor) -> (Int64) = library.load(symbol: "clang_Cursor_getOffsetOfField")
internal let clang_Cursor_isAnonymous: @convention(c) (CXCursor) -> (UInt32) = library.load(symbol: "clang_Cursor_isAnonymous")
internal let clang_Type_getNumTemplateArguments: @convention(c) (CXType) -> (Int32) = library.load(symbol: "clang_Type_getNumTemplateArguments")
internal let clang_Type_getTemplateArgumentAsType: @convention(c) (CXType, UInt32) -> (CXType) = library.load(symbol: "clang_Type_getTemplateArgumentAsType")
internal let clang_Type_getCXXRefQualifier: @convention(c) (CXType) -> (CXRefQualifierKind) = library.load(symbol: "clang_Type_getCXXRefQualifier")
internal let clang_Cursor_isBitField: @convention(c) (CXCursor) -> (UInt32) = library.load(symbol: "clang_Cursor_isBitField")
internal let clang_isVirtualBase: @convention(c) (CXCursor) -> (UInt32) = library.load(symbol: "clang_isVirtualBase")
internal let clang_getCXXAccessSpecifier: @convention(c) (CXCursor) -> (CX_CXXAccessSpecifier) = library.load(symbol: "clang_getCXXAccessSpecifier")
internal let clang_Cursor_getStorageClass: @convention(c) (CXCursor) -> (CX_StorageClass) = library.load(symbol: "clang_Cursor_getStorageClass")
internal let clang_getNumOverloadedDecls: @convention(c) (CXCursor) -> (UInt32) = library.load(symbol: "clang_getNumOverloadedDecls")
internal let clang_getOverloadedDecl: @convention(c) (CXCursor, UInt32) -> (CXCursor) = library.load(symbol: "clang_getOverloadedDecl")
internal let clang_getIBOutletCollectionType: @convention(c) (CXCursor) -> (CXType) = library.load(symbol: "clang_getIBOutletCollectionType")
internal let clang_visitChildren: @convention(c) (CXCursor, CXCursorVisitor?, CXClientData?) -> (UInt32) = library.load(symbol: "clang_visitChildren")
internal let clang_visitChildrenWithBlock: @convention(c) (CXCursor, CXCursorVisitorBlock?) -> (UInt32) = library.load(symbol: "clang_visitChildrenWithBlock")
internal let clang_getCursorUSR: @convention(c) (CXCursor) -> (CXString) = library.load(symbol: "clang_getCursorUSR")
internal let clang_constructUSR_ObjCClass: @convention(c) (UnsafePointer<Int8>?) -> (CXString) = library.load(symbol: "clang_constructUSR_ObjCClass")
internal let clang_constructUSR_ObjCCategory: @convention(c) (UnsafePointer<Int8>?, UnsafePointer<Int8>?) -> (CXString) = library.load(symbol: "clang_constructUSR_ObjCCategory")
internal let clang_constructUSR_ObjCProtocol: @convention(c) (UnsafePointer<Int8>?) -> (CXString) = library.load(symbol: "clang_constructUSR_ObjCProtocol")
internal let clang_constructUSR_ObjCIvar: @convention(c) (UnsafePointer<Int8>?, CXString) -> (CXString) = library.load(symbol: "clang_constructUSR_ObjCIvar")
internal let clang_constructUSR_ObjCMethod: @convention(c) (UnsafePointer<Int8>?, UInt32, CXString) -> (CXString) = library.load(symbol: "clang_constructUSR_ObjCMethod")
internal let clang_constructUSR_ObjCProperty: @convention(c) (UnsafePointer<Int8>?, CXString) -> (CXString) = library.load(symbol: "clang_constructUSR_ObjCProperty")
internal let clang_getCursorSpelling: @convention(c) (CXCursor) -> (CXString) = library.load(symbol: "clang_getCursorSpelling")
internal let clang_Cursor_getSpellingNameRange: @convention(c) (CXCursor, UInt32, UInt32) -> (CXSourceRange) = library.load(symbol: "clang_Cursor_getSpellingNameRange")
internal let clang_getCursorDisplayName: @convention(c) (CXCursor) -> (CXString) = library.load(symbol: "clang_getCursorDisplayName")
internal let clang_getCursorReferenced: @convention(c) (CXCursor) -> (CXCursor) = library.load(symbol: "clang_getCursorReferenced")
internal let clang_getCursorDefinition: @convention(c) (CXCursor) -> (CXCursor) = library.load(symbol: "clang_getCursorDefinition")
internal let clang_isCursorDefinition: @convention(c) (CXCursor) -> (UInt32) = library.load(symbol: "clang_isCursorDefinition")
internal let clang_getCanonicalCursor: @convention(c) (CXCursor) -> (CXCursor) = library.load(symbol: "clang_getCanonicalCursor")
internal let clang_Cursor_getObjCSelectorIndex: @convention(c) (CXCursor) -> (Int32) = library.load(symbol: "clang_Cursor_getObjCSelectorIndex")
internal let clang_Cursor_isDynamicCall: @convention(c) (CXCursor) -> (Int32) = library.load(symbol: "clang_Cursor_isDynamicCall")
internal let clang_Cursor_getReceiverType: @convention(c) (CXCursor) -> (CXType) = library.load(symbol: "clang_Cursor_getReceiverType")
internal let clang_Cursor_getObjCPropertyAttributes: @convention(c) (CXCursor, UInt32) -> (UInt32) = library.load(symbol: "clang_Cursor_getObjCPropertyAttributes")
internal let clang_Cursor_getObjCDeclQualifiers: @convention(c) (CXCursor) -> (UInt32) = library.load(symbol: "clang_Cursor_getObjCDeclQualifiers")
internal let clang_Cursor_isObjCOptional: @convention(c) (CXCursor) -> (UInt32) = library.load(symbol: "clang_Cursor_isObjCOptional")
internal let clang_Cursor_isVariadic: @convention(c) (CXCursor) -> (UInt32) = library.load(symbol: "clang_Cursor_isVariadic")
internal let clang_Cursor_getCommentRange: @convention(c) (CXCursor) -> (CXSourceRange) = library.load(symbol: "clang_Cursor_getCommentRange")
internal let clang_Cursor_getRawCommentText: @convention(c) (CXCursor) -> (CXString) = library.load(symbol: "clang_Cursor_getRawCommentText")
internal let clang_Cursor_getBriefCommentText: @convention(c) (CXCursor) -> (CXString) = library.load(symbol: "clang_Cursor_getBriefCommentText")
internal let clang_Cursor_getMangling: @convention(c) (CXCursor) -> (CXString) = library.load(symbol: "clang_Cursor_getMangling")
internal let clang_Cursor_getModule: @convention(c) (CXCursor) -> (CXModule!) = library.load(symbol: "clang_Cursor_getModule")
internal let clang_getModuleForFile: @convention(c) (CXTranslationUnit?, CXFile?) -> (CXModule!) = library.load(symbol: "clang_getModuleForFile")
internal let clang_Module_getASTFile: @convention(c) (CXModule?) -> (CXFile!) = library.load(symbol: "clang_Module_getASTFile")
internal let clang_Module_getParent: @convention(c) (CXModule?) -> (CXModule!) = library.load(symbol: "clang_Module_getParent")
internal let clang_Module_getName: @convention(c) (CXModule?) -> (CXString) = library.load(symbol: "clang_Module_getName")
internal let clang_Module_getFullName: @convention(c) (CXModule?) -> (CXString) = library.load(symbol: "clang_Module_getFullName")
internal let clang_Module_isSystem: @convention(c) (CXModule?) -> (Int32) = library.load(symbol: "clang_Module_isSystem")
internal let clang_Module_getNumTopLevelHeaders: @convention(c) (CXTranslationUnit?, CXModule?) -> (UInt32) = library.load(symbol: "clang_Module_getNumTopLevelHeaders")
internal let clang_Module_getTopLevelHeader: @convention(c) (CXTranslationUnit?, CXModule?, UInt32) -> (CXFile!) = library.load(symbol: "clang_Module_getTopLevelHeader")
internal let clang_CXXField_isMutable: @convention(c) (CXCursor) -> (UInt32) = library.load(symbol: "clang_CXXField_isMutable")
internal let clang_CXXMethod_isPureVirtual: @convention(c) (CXCursor) -> (UInt32) = library.load(symbol: "clang_CXXMethod_isPureVirtual")
internal let clang_CXXMethod_isStatic: @convention(c) (CXCursor) -> (UInt32) = library.load(symbol: "clang_CXXMethod_isStatic")
internal let clang_CXXMethod_isVirtual: @convention(c) (CXCursor) -> (UInt32) = library.load(symbol: "clang_CXXMethod_isVirtual")
internal let clang_CXXMethod_isConst: @convention(c) (CXCursor) -> (UInt32) = library.load(symbol: "clang_CXXMethod_isConst")
internal let clang_getTemplateCursorKind: @convention(c) (CXCursor) -> (CXCursorKind) = library.load(symbol: "clang_getTemplateCursorKind")
internal let clang_getSpecializedCursorTemplate: @convention(c) (CXCursor) -> (CXCursor) = library.load(symbol: "clang_getSpecializedCursorTemplate")
internal let clang_getCursorReferenceNameRange: @convention(c) (CXCursor, UInt32, UInt32) -> (CXSourceRange) = library.load(symbol: "clang_getCursorReferenceNameRange")
internal let clang_getTokenKind: @convention(c) (CXToken) -> (CXTokenKind) = library.load(symbol: "clang_getTokenKind")
internal let clang_getTokenSpelling: @convention(c) (CXTranslationUnit?, CXToken) -> (CXString) = library.load(symbol: "clang_getTokenSpelling")
internal let clang_getTokenLocation: @convention(c) (CXTranslationUnit?, CXToken) -> (CXSourceLocation) = library.load(symbol: "clang_getTokenLocation")
internal let clang_getTokenExtent: @convention(c) (CXTranslationUnit?, CXToken) -> (CXSourceRange) = library.load(symbol: "clang_getTokenExtent")
internal let clang_tokenize: @convention(c) (CXTranslationUnit?, CXSourceRange, UnsafeMutablePointer<UnsafeMutablePointer<CXToken>?>?, UnsafeMutablePointer<UInt32>?) -> () = library.load(symbol: "clang_tokenize")
internal let clang_annotateTokens: @convention(c) (CXTranslationUnit?, UnsafeMutablePointer<CXToken>?, UInt32, UnsafeMutablePointer<CXCursor>?) -> () = library.load(symbol: "clang_annotateTokens")
internal let clang_disposeTokens: @convention(c) (CXTranslationUnit?, UnsafeMutablePointer<CXToken>?, UInt32) -> () = library.load(symbol: "clang_disposeTokens")
internal let clang_getCursorKindSpelling: @convention(c) (CXCursorKind) -> (CXString) = library.load(symbol: "clang_getCursorKindSpelling")
internal let clang_getDefinitionSpellingAndExtent: @convention(c) (CXCursor, UnsafeMutablePointer<UnsafePointer<Int8>?>?, UnsafeMutablePointer<UnsafePointer<Int8>?>?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?) -> () = library.load(symbol: "clang_getDefinitionSpellingAndExtent")
internal let clang_enableStackTraces: @convention(c) () -> () = library.load(symbol: "clang_enableStackTraces")
internal let clang_getCompletionChunkKind: @convention(c) (CXCompletionString?, UInt32) -> (CXCompletionChunkKind) = library.load(symbol: "clang_getCompletionChunkKind")
internal let clang_getCompletionChunkText: @convention(c) (CXCompletionString?, UInt32) -> (CXString) = library.load(symbol: "clang_getCompletionChunkText")
internal let clang_getCompletionChunkCompletionString: @convention(c) (CXCompletionString?, UInt32) -> (CXCompletionString!) = library.load(symbol: "clang_getCompletionChunkCompletionString")
internal let clang_getNumCompletionChunks: @convention(c) (CXCompletionString?) -> (UInt32) = library.load(symbol: "clang_getNumCompletionChunks")
internal let clang_getCompletionPriority: @convention(c) (CXCompletionString?) -> (UInt32) = library.load(symbol: "clang_getCompletionPriority")
internal let clang_getCompletionAvailability: @convention(c) (CXCompletionString?) -> (CXAvailabilityKind) = library.load(symbol: "clang_getCompletionAvailability")
internal let clang_getCompletionNumAnnotations: @convention(c) (CXCompletionString?) -> (UInt32) = library.load(symbol: "clang_getCompletionNumAnnotations")
internal let clang_getCompletionAnnotation: @convention(c) (CXCompletionString?, UInt32) -> (CXString) = library.load(symbol: "clang_getCompletionAnnotation")
internal let clang_getCompletionParent: @convention(c) (CXCompletionString?, UnsafeMutablePointer<CXCursorKind>?) -> (CXString) = library.load(symbol: "clang_getCompletionParent")
internal let clang_getCompletionBriefComment: @convention(c) (CXCompletionString?) -> (CXString) = library.load(symbol: "clang_getCompletionBriefComment")
internal let clang_getCursorCompletionString: @convention(c) (CXCursor) -> (CXCompletionString!) = library.load(symbol: "clang_getCursorCompletionString")
internal let clang_defaultCodeCompleteOptions: @convention(c) () -> (UInt32) = library.load(symbol: "clang_defaultCodeCompleteOptions")
internal let clang_codeCompleteAt: @convention(c) (CXTranslationUnit?, UnsafePointer<Int8>?, UInt32, UInt32, UnsafeMutablePointer<CXUnsavedFile>?, UInt32, UInt32) -> (UnsafeMutablePointer<CXCodeCompleteResults>!) = library.load(symbol: "clang_codeCompleteAt")
internal let clang_sortCodeCompletionResults: @convention(c) (UnsafeMutablePointer<CXCompletionResult>?, UInt32) -> () = library.load(symbol: "clang_sortCodeCompletionResults")
internal let clang_disposeCodeCompleteResults: @convention(c) (UnsafeMutablePointer<CXCodeCompleteResults>?) -> () = library.load(symbol: "clang_disposeCodeCompleteResults")
internal let clang_codeCompleteGetNumDiagnostics: @convention(c) (UnsafeMutablePointer<CXCodeCompleteResults>?) -> (UInt32) = library.load(symbol: "clang_codeCompleteGetNumDiagnostics")
internal let clang_codeCompleteGetDiagnostic: @convention(c) (UnsafeMutablePointer<CXCodeCompleteResults>?, UInt32) -> (CXDiagnostic!) = library.load(symbol: "clang_codeCompleteGetDiagnostic")
internal let clang_codeCompleteGetContexts: @convention(c) (UnsafeMutablePointer<CXCodeCompleteResults>?) -> (UInt64) = library.load(symbol: "clang_codeCompleteGetContexts")
internal let clang_codeCompleteGetContainerKind: @convention(c) (UnsafeMutablePointer<CXCodeCompleteResults>?, UnsafeMutablePointer<UInt32>?) -> (CXCursorKind) = library.load(symbol: "clang_codeCompleteGetContainerKind")
internal let clang_codeCompleteGetContainerUSR: @convention(c) (UnsafeMutablePointer<CXCodeCompleteResults>?) -> (CXString) = library.load(symbol: "clang_codeCompleteGetContainerUSR")
internal let clang_codeCompleteGetObjCSelector: @convention(c) (UnsafeMutablePointer<CXCodeCompleteResults>?) -> (CXString) = library.load(symbol: "clang_codeCompleteGetObjCSelector")
internal let clang_getClangVersion: @convention(c) () -> (CXString) = library.load(symbol: "clang_getClangVersion")
internal let clang_toggleCrashRecovery: @convention(c) (UInt32) -> () = library.load(symbol: "clang_toggleCrashRecovery")
internal let clang_getInclusions: @convention(c) (CXTranslationUnit?, CXInclusionVisitor?, CXClientData?) -> () = library.load(symbol: "clang_getInclusions")
internal let clang_getRemappings: @convention(c) (UnsafePointer<Int8>?) -> (CXRemapping!) = library.load(symbol: "clang_getRemappings")
internal let clang_getRemappingsFromFileList: @convention(c) (UnsafeMutablePointer<UnsafePointer<Int8>?>?, UInt32) -> (CXRemapping!) = library.load(symbol: "clang_getRemappingsFromFileList")
internal let clang_remap_getNumFiles: @convention(c) (CXRemapping?) -> (UInt32) = library.load(symbol: "clang_remap_getNumFiles")
internal let clang_remap_getFilenames: @convention(c) (CXRemapping?, UInt32, UnsafeMutablePointer<CXString>?, UnsafeMutablePointer<CXString>?) -> () = library.load(symbol: "clang_remap_getFilenames")
internal let clang_remap_dispose: @convention(c) (CXRemapping?) -> () = library.load(symbol: "clang_remap_dispose")
internal let clang_findReferencesInFile: @convention(c) (CXCursor, CXFile?, CXCursorAndRangeVisitor) -> (CXResult) = library.load(symbol: "clang_findReferencesInFile")
internal let clang_findIncludesInFile: @convention(c) (CXTranslationUnit?, CXFile?, CXCursorAndRangeVisitor) -> (CXResult) = library.load(symbol: "clang_findIncludesInFile")
internal let clang_findReferencesInFileWithBlock: @convention(c) (CXCursor, CXFile?, CXCursorAndRangeVisitorBlock?) -> (CXResult) = library.load(symbol: "clang_findReferencesInFileWithBlock")
internal let clang_findIncludesInFileWithBlock: @convention(c) (CXTranslationUnit?, CXFile?, CXCursorAndRangeVisitorBlock?) -> (CXResult) = library.load(symbol: "clang_findIncludesInFileWithBlock")
internal let clang_index_isEntityObjCContainerKind: @convention(c) (CXIdxEntityKind) -> (Int32) = library.load(symbol: "clang_index_isEntityObjCContainerKind")
internal let clang_index_getObjCContainerDeclInfo: @convention(c) (UnsafePointer<CXIdxDeclInfo>?) -> (UnsafePointer<CXIdxObjCContainerDeclInfo>!) = library.load(symbol: "clang_index_getObjCContainerDeclInfo")
internal let clang_index_getObjCInterfaceDeclInfo: @convention(c) (UnsafePointer<CXIdxDeclInfo>?) -> (UnsafePointer<CXIdxObjCInterfaceDeclInfo>!) = library.load(symbol: "clang_index_getObjCInterfaceDeclInfo")
internal let clang_index_getObjCCategoryDeclInfo: @convention(c) (UnsafePointer<CXIdxDeclInfo>?) -> (UnsafePointer<CXIdxObjCCategoryDeclInfo>!) = library.load(symbol: "clang_index_getObjCCategoryDeclInfo")
internal let clang_index_getObjCProtocolRefListInfo: @convention(c) (UnsafePointer<CXIdxDeclInfo>?) -> (UnsafePointer<CXIdxObjCProtocolRefListInfo>!) = library.load(symbol: "clang_index_getObjCProtocolRefListInfo")
internal let clang_index_getObjCPropertyDeclInfo: @convention(c) (UnsafePointer<CXIdxDeclInfo>?) -> (UnsafePointer<CXIdxObjCPropertyDeclInfo>!) = library.load(symbol: "clang_index_getObjCPropertyDeclInfo")
internal let clang_index_getIBOutletCollectionAttrInfo: @convention(c) (UnsafePointer<CXIdxAttrInfo>?) -> (UnsafePointer<CXIdxIBOutletCollectionAttrInfo>!) = library.load(symbol: "clang_index_getIBOutletCollectionAttrInfo")
internal let clang_index_getCXXClassDeclInfo: @convention(c) (UnsafePointer<CXIdxDeclInfo>?) -> (UnsafePointer<CXIdxCXXClassDeclInfo>!) = library.load(symbol: "clang_index_getCXXClassDeclInfo")
internal let clang_index_getClientContainer: @convention(c) (UnsafePointer<CXIdxContainerInfo>?) -> (CXIdxClientContainer!) = library.load(symbol: "clang_index_getClientContainer")
internal let clang_index_setClientContainer: @convention(c) (UnsafePointer<CXIdxContainerInfo>?, CXIdxClientContainer?) -> () = library.load(symbol: "clang_index_setClientContainer")
internal let clang_index_getClientEntity: @convention(c) (UnsafePointer<CXIdxEntityInfo>?) -> (CXIdxClientEntity!) = library.load(symbol: "clang_index_getClientEntity")
internal let clang_index_setClientEntity: @convention(c) (UnsafePointer<CXIdxEntityInfo>?, CXIdxClientEntity?) -> () = library.load(symbol: "clang_index_setClientEntity")
internal let clang_IndexAction_create: @convention(c) (CXIndex?) -> (CXIndexAction!) = library.load(symbol: "clang_IndexAction_create")
internal let clang_IndexAction_dispose: @convention(c) (CXIndexAction?) -> () = library.load(symbol: "clang_IndexAction_dispose")
internal let clang_indexSourceFile: @convention(c) (CXIndexAction?, CXClientData?, UnsafeMutablePointer<IndexerCallbacks>?, UInt32, UInt32, UnsafePointer<Int8>?, UnsafePointer<UnsafePointer<Int8>?>?, Int32, UnsafeMutablePointer<CXUnsavedFile>?, UInt32, UnsafeMutablePointer<CXTranslationUnit?>?, UInt32) -> (Int32) = library.load(symbol: "clang_indexSourceFile")
internal let clang_indexTranslationUnit: @convention(c) (CXIndexAction?, CXClientData?, UnsafeMutablePointer<IndexerCallbacks>?, UInt32, UInt32, CXTranslationUnit?) -> (Int32) = library.load(symbol: "clang_indexTranslationUnit")
internal let clang_indexLoc_getFileLocation: @convention(c) (CXIdxLoc, UnsafeMutablePointer<CXIdxClientFile?>?, UnsafeMutablePointer<CXFile?>?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<UInt32>?) -> () = library.load(symbol: "clang_indexLoc_getFileLocation")
internal let clang_indexLoc_getCXSourceLocation: @convention(c) (CXIdxLoc) -> (CXSourceLocation) = library.load(symbol: "clang_indexLoc_getCXSourceLocation")
internal let clang_Type_visitFields: @convention(c) (CXType, CXFieldVisitor?, CXClientData?) -> (UInt32) = library.load(symbol: "clang_Type_visitFields")
#endif
