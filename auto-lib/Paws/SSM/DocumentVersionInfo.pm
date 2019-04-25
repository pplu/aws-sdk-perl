package Paws::SSM::DocumentVersionInfo;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str');
  has DocumentFormat => (is => 'ro', isa => 'Str');
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has IsDefaultVersion => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusInformation => (is => 'ro', isa => 'Str');
  has VersionName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DocumentVersionInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::DocumentVersionInfo object:

  $service_obj->Method(Att1 => { CreatedDate => $value, ..., VersionName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::DocumentVersionInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedDate

=head1 DESCRIPTION

Version information about the document.

=head1 ATTRIBUTES


=head2 CreatedDate => Str

  The date the document was created.


=head2 DocumentFormat => Str

  The document format, either JSON or YAML.


=head2 DocumentVersion => Str

  The document version.


=head2 IsDefaultVersion => Bool

  An identifier for the default version of the document.


=head2 Name => Str

  The document name.


=head2 Status => Str

  The status of the Systems Manager document, such as C<Creating>,
C<Active>, C<Failed>, and C<Deleting>.


=head2 StatusInformation => Str

  A message returned by AWS Systems Manager that explains the C<Status>
value. For example, a C<Failed> status might be explained by the
C<StatusInformation> message, "The specified S3 bucket does not exist.
Verify that the URL of the S3 bucket is correct."


=head2 VersionName => Str

  The version of the artifact associated with the document. For example,
"Release 12, Update 6". This value is unique across all versions of a
document, and cannot be changed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

