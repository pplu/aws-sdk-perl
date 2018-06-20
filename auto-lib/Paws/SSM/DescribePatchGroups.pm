
package Paws::SSM::DescribePatchGroups;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::PatchOrchestratorFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePatchGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DescribePatchGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribePatchGroups - Arguments for method DescribePatchGroups on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePatchGroups on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribePatchGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePatchGroups.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribePatchGroupsResult = $ssm->DescribePatchGroups(
      Filters => [
        {
          Key    => 'MyPatchOrchestratorFilterKey', # min: 1, max: 128; OPTIONAL
          Values => [
            'MyPatchOrchestratorFilterValue', ...    # min: 1, max: 256
          ],                                         # OPTIONAL
        },
        ...
      ],                                             # OPTIONAL
      MaxResults => 1,                               # OPTIONAL
      NextToken  => 'MyNextToken',                   # OPTIONAL
    );

    # Results:
    my $Mappings  = $DescribePatchGroupsResult->Mappings;
    my $NextToken = $DescribePatchGroupsResult->NextToken;

    # Returns a L<Paws::SSM::DescribePatchGroupsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribePatchGroups>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::SSM::PatchOrchestratorFilter>]

One or more filters. Use a filter to return a more specific list of
results.



=head2 MaxResults => Int

The maximum number of patch groups to return (per page).



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePatchGroups in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

