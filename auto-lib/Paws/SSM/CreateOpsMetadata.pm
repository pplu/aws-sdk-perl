
package Paws::SSM::CreateOpsMetadata;
  use Moose;
  has Metadata => (is => 'ro', isa => 'Paws::SSM::MetadataMap');
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOpsMetadata');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::CreateOpsMetadataResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CreateOpsMetadata - Arguments for method CreateOpsMetadata on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateOpsMetadata on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method CreateOpsMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateOpsMetadata.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $CreateOpsMetadataResult = $ssm->CreateOpsMetadata(
      ResourceId => 'MyOpsMetadataResourceId',
      Metadata   => {
        'MyMetadataKey' => {
          Value => 'MyMetadataValueString',    # min: 1, max: 4096; OPTIONAL
        },    # key: min: 1, max: 256
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $OpsMetadataArn = $CreateOpsMetadataResult->OpsMetadataArn;

    # Returns a L<Paws::SSM::CreateOpsMetadataResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/CreateOpsMetadata>

=head1 ATTRIBUTES


=head2 Metadata => L<Paws::SSM::MetadataMap>

Metadata for a new Application Manager application.



=head2 B<REQUIRED> ResourceId => Str

A resource ID for a new Application Manager application.



=head2 Tags => ArrayRef[L<Paws::SSM::Tag>]

Optional metadata that you assign to a resource. You can specify a
maximum of five tags for an OpsMetadata object. Tags enable you to
categorize a resource in different ways, such as by purpose, owner, or
environment. For example, you might want to tag an OpsMetadata object
to identify an environment or target AWS Region. In this case, you
could specify the following key-value pairs:

=over

=item *

C<Key=Environment,Value=Production>

=item *

C<Key=Region,Value=us-east-2>

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateOpsMetadata in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

