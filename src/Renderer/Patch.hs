import Data.Blob
import Data.Range
import Data.Source
truncatePatch :: Both Blob -> ByteString
renderPatch :: (HasField fields Range, Traversable f) => Both Blob -> Diff f (Record fields) -> File
showHunk :: Functor f => HasField fields Range => Both Blob -> Hunk (SplitDiff f (Record fields)) -> ByteString
  where sources = blobSource <$> blobs
showLine source line | Just line <- line = Just . sourceBytes . (`slice` source) $ getRange line
header :: Both Blob -> ByteString
        modeHeader :: ByteString -> Maybe BlobKind -> ByteString -> ByteString
        maybeFilepaths = if (nullOid == oidA && nullSource (snd sources)) || (nullOid == oidB && nullSource (fst sources)) then [] else [ beforeFilepath, afterFilepath ]
        sources = blobSource <$> blobs
        (pathA, pathB) = case runJoin $ toS . blobPath <$> blobs of
        (oidA, oidB) = runJoin $ blobOid <$> blobs
hunks :: (Traversable f, HasField fields Range) => Diff f (Record fields) -> Both Blob -> [Hunk (SplitDiff [] (Record fields))]
hunks _ blobs | sources <- blobSource <$> blobs
              , sourcesNull <- runBothWith (&&) (nullSource <$> sources)
hunks diff blobs = hunksInRows (pure 1) $ alignDiff (blobSource <$> blobs) diff