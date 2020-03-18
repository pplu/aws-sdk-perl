package Paws::CloudFormation::ResourceIdentifierSummary;
  use Moose;
  has LogicalResourceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ResourceIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ResourceType => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ResourceIdentifierSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::ResourceIdentifierSummary object:

  $service_obj->Method(Att1 => { LogicalResourceIds => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::ResourceIdentifierSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->LogicalResourceIds

=head1 DESCRIPTION

Describes the target resources of a specific type in your import
template (for example, all C<AWS::S3::Bucket> resources) and the
properties you can provide during the import to identify resources of
that type.

=head1 ATTRIBUTES


=head2 LogicalResourceIds => ArrayRef[Str|Undef]

  The logical IDs of the target resources of the specified
C<ResourceType>, as defined in the import template.


=head2 ResourceIdentifiers => ArrayRef[Str|Undef]

  The resource properties you can provide during the import to identify
your target resources. For example, C<BucketName> is a possible
identifier property for C<AWS::S3::Bucket> resources.


=head2 ResourceType => Str

  The template resource type of the target resources, such as
C<AWS::S3::Bucket>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

