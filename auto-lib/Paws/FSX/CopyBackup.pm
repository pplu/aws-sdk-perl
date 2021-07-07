
package Paws::FSX::CopyBackup;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has CopyTags => (is => 'ro', isa => 'Bool');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has SourceBackupId => (is => 'ro', isa => 'Str', required => 1);
  has SourceRegion => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyBackup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::CopyBackupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CopyBackup - Arguments for method CopyBackup on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyBackup on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method CopyBackup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyBackup.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $CopyBackupResponse = $fsx->CopyBackup(
      SourceBackupId     => 'MySourceBackupId',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      CopyTags           => 1,                         # OPTIONAL
      KmsKeyId           => 'MyKmsKeyId',              # OPTIONAL
      SourceRegion       => 'MyRegion',                # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Backup = $CopyBackupResponse->Backup;

    # Returns a L<Paws::FSX::CopyBackupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/CopyBackup>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str





=head2 CopyTags => Bool

A boolean flag indicating whether tags from the source backup should be
copied to the backup copy. This value defaults to false.

If you set C<CopyTags> to true and the source backup has existing tags,
you can use the C<Tags> parameter to create new tags, provided that the
sum of the source backup tags and the new tags doesn't exceed 50. Both
sets of tags are merged. If there are tag conflicts (for example, two
tags with the same key but different values), the tags created with the
C<Tags> parameter take precedence.



=head2 KmsKeyId => Str





=head2 B<REQUIRED> SourceBackupId => Str

The ID of the source backup. Specifies the ID of the backup that is
being copied.



=head2 SourceRegion => Str

The source AWS Region of the backup. Specifies the AWS Region from
which the backup is being copied. The source and destination Regions
must be in the same AWS partition. If you don't specify a Region, it
defaults to the Region where the request is sent from (in-Region copy).



=head2 Tags => ArrayRef[L<Paws::FSX::Tag>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyBackup in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

