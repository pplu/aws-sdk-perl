
package Paws::SSM::GetOpsMetadata;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OpsMetadataArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOpsMetadata');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetOpsMetadataResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetOpsMetadata - Arguments for method GetOpsMetadata on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetOpsMetadata on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method GetOpsMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetOpsMetadata.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $GetOpsMetadataResult = $ssm->GetOpsMetadata(
      OpsMetadataArn => 'MyOpsMetadataArn',
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyNextToken',        # OPTIONAL
    );

    # Results:
    my $Metadata   = $GetOpsMetadataResult->Metadata;
    my $NextToken  = $GetOpsMetadataResult->NextToken;
    my $ResourceId = $GetOpsMetadataResult->ResourceId;

    # Returns a L<Paws::SSM::GetOpsMetadataResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/GetOpsMetadata>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

A token to start the list. Use this token to get the next set of
results.



=head2 B<REQUIRED> OpsMetadataArn => Str

The Amazon Resource Name (ARN) of an OpsMetadata Object to view.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetOpsMetadata in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

