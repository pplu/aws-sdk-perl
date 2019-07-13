package Paws::SSM::DocumentIdentifier;
  use Moose;
  has DocumentFormat => (is => 'ro', isa => 'Str');
  has DocumentType => (is => 'ro', isa => 'Str');
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Str');
  has PlatformTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SchemaVersion => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Tag]');
  has TargetType => (is => 'ro', isa => 'Str');
  has VersionName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DocumentIdentifier

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::DocumentIdentifier object:

  $service_obj->Method(Att1 => { DocumentFormat => $value, ..., VersionName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::DocumentIdentifier object:

  $result = $service_obj->Method(...);
  $result->Att1->DocumentFormat

=head1 DESCRIPTION

Describes the name of a Systems Manager document.

=head1 ATTRIBUTES


=head2 DocumentFormat => Str

  The document format, either JSON or YAML.


=head2 DocumentType => Str

  The document type.


=head2 DocumentVersion => Str

  The document version.


=head2 Name => Str

  The name of the Systems Manager document.


=head2 Owner => Str

  The AWS user account that created the document.


=head2 PlatformTypes => ArrayRef[Str|Undef]

  The operating system platform.


=head2 SchemaVersion => Str

  The schema version.


=head2 Tags => ArrayRef[L<Paws::SSM::Tag>]

  The tags, or metadata, that have been applied to the document.


=head2 TargetType => Str

  The target type which defines the kinds of resources the document can
run on. For example, /AWS::EC2::Instance. For a list of valid resource
types, see AWS Resource Types Reference
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html)
in the I<AWS CloudFormation User Guide>.


=head2 VersionName => Str

  An optional field specifying the version of the artifact associated
with the document. For example, "Release 12, Update 6". This value is
unique across all versions of a document, and cannot be changed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

