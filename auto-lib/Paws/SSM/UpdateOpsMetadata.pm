
package Paws::SSM::UpdateOpsMetadata;
  use Moose;
  has KeysToDelete => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MetadataToUpdate => (is => 'ro', isa => 'Paws::SSM::MetadataMap');
  has OpsMetadataArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateOpsMetadata');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::UpdateOpsMetadataResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateOpsMetadata - Arguments for method UpdateOpsMetadata on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateOpsMetadata on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method UpdateOpsMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateOpsMetadata.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $UpdateOpsMetadataResult = $ssm->UpdateOpsMetadata(
      OpsMetadataArn => 'MyOpsMetadataArn',
      KeysToDelete   => [
        'MyMetadataKey', ...    # min: 1, max: 256
      ],                        # OPTIONAL
      MetadataToUpdate => {
        'MyMetadataKey' => {
          Value => 'MyMetadataValueString',    # min: 1, max: 4096; OPTIONAL
        },    # key: min: 1, max: 256
      },    # OPTIONAL
    );

    # Results:
    my $OpsMetadataArn = $UpdateOpsMetadataResult->OpsMetadataArn;

    # Returns a L<Paws::SSM::UpdateOpsMetadataResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/UpdateOpsMetadata>

=head1 ATTRIBUTES


=head2 KeysToDelete => ArrayRef[Str|Undef]

The metadata keys to delete from the OpsMetadata object.



=head2 MetadataToUpdate => L<Paws::SSM::MetadataMap>

Metadata to add to an OpsMetadata object.



=head2 B<REQUIRED> OpsMetadataArn => Str

The Amazon Resoure Name (ARN) of the OpsMetadata Object to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateOpsMetadata in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

