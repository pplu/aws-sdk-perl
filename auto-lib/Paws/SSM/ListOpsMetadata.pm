
package Paws::SSM::ListOpsMetadata;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::OpsMetadataFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOpsMetadata');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::ListOpsMetadataResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListOpsMetadata - Arguments for method ListOpsMetadata on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOpsMetadata on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method ListOpsMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOpsMetadata.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $ListOpsMetadataResult = $ssm->ListOpsMetadata(
      Filters => [
        {
          Key    => 'MyOpsMetadataFilterKey',    # min: 1, max: 128
          Values => [
            'MyOpsMetadataFilterValue', ...      # min: 1, max: 1024
          ],                                     # min: 1, max: 10

        },
        ...
      ],                                         # OPTIONAL
      MaxResults => 1,                           # OPTIONAL
      NextToken  => 'MyNextToken',               # OPTIONAL
    );

    # Results:
    my $NextToken       = $ListOpsMetadataResult->NextToken;
    my $OpsMetadataList = $ListOpsMetadataResult->OpsMetadataList;

    # Returns a L<Paws::SSM::ListOpsMetadataResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/ListOpsMetadata>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::SSM::OpsMetadataFilter>]

One or more filters to limit the number of OpsMetadata objects returned
by the call.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

A token to start the list. Use this token to get the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOpsMetadata in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

