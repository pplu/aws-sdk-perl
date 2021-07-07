
package Paws::LakeFormation::ListResources;
  use Moose;
  has FilterConditionList => (is => 'ro', isa => 'ArrayRef[Paws::LakeFormation::FilterCondition]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LakeFormation::ListResourcesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::ListResources - Arguments for method ListResources on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResources on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method ListResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResources.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $ListResourcesResponse = $lakeformation->ListResources(
      FilterConditionList => [
        {
          ComparisonOperator => 'EQ'
          , # values: EQ, NE, LE, LT, GE, GT, CONTAINS, NOT_CONTAINS, BEGINS_WITH, IN, BETWEEN; OPTIONAL
          Field => 'RESOURCE_ARN'
          ,    # values: RESOURCE_ARN, ROLE_ARN, LAST_MODIFIED; OPTIONAL
          StringValueList => [ 'MyStringValue', ... ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
    );

    # Results:
    my $NextToken        = $ListResourcesResponse->NextToken;
    my $ResourceInfoList = $ListResourcesResponse->ResourceInfoList;

    # Returns a L<Paws::LakeFormation::ListResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/ListResources>

=head1 ATTRIBUTES


=head2 FilterConditionList => ArrayRef[L<Paws::LakeFormation::FilterCondition>]

Any applicable row-level and/or column-level filtering conditions for
the resources.



=head2 MaxResults => Int

The maximum number of resource results.



=head2 NextToken => Str

A continuation token, if this is not the first call to retrieve these
resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResources in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

