
package Paws::SSM::DeleteOpsMetadata;
  use Moose;
  has OpsMetadataArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteOpsMetadata');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DeleteOpsMetadataResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DeleteOpsMetadata - Arguments for method DeleteOpsMetadata on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteOpsMetadata on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DeleteOpsMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteOpsMetadata.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DeleteOpsMetadataResult = $ssm->DeleteOpsMetadata(
      OpsMetadataArn => 'MyOpsMetadataArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DeleteOpsMetadata>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OpsMetadataArn => Str

The Amazon Resource Name (ARN) of an OpsMetadata Object to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteOpsMetadata in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

