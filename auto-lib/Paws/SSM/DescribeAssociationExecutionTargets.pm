# Generated from json/callargs_class.tt

package Paws::SSM::DescribeAssociationExecutionTargets;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::SSM::Types qw/SSM_AssociationExecutionTargetsFilter/;
  has AssociationId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ExecutionId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Filters => (is => 'ro', isa => ArrayRef[SSM_AssociationExecutionTargetsFilter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeAssociationExecutionTargets');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SSM::DescribeAssociationExecutionTargetsResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ExecutionId' => 1,
                    'AssociationId' => 1
                  },
  'types' => {
               'ExecutionId' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'AssociationId' => {
                                    'type' => 'Str'
                                  },
               'Filters' => {
                              'class' => 'Paws::SSM::AssociationExecutionTargetsFilter',
                              'type' => 'ArrayRef[SSM_AssociationExecutionTargetsFilter]'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeAssociationExecutionTargets - Arguments for method DescribeAssociationExecutionTargets on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAssociationExecutionTargets on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribeAssociationExecutionTargets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAssociationExecutionTargets.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribeAssociationExecutionTargetsResult =
      $ssm->DescribeAssociationExecutionTargets(
      AssociationId => 'MyAssociationId',
      ExecutionId   => 'MyAssociationExecutionId',
      Filters       => [
        {
          Key => 'Status',    # values: Status, ResourceId, ResourceType
          Value => 'MyAssociationExecutionTargetsFilterValue',    # min: 1

        },
        ...
      ],                                                          # OPTIONAL
      MaxResults => 1,                                            # OPTIONAL
      NextToken  => 'MyNextToken',                                # OPTIONAL
      );

    # Results:
    my $AssociationExecutionTargets =
      $DescribeAssociationExecutionTargetsResult->AssociationExecutionTargets;
    my $NextToken = $DescribeAssociationExecutionTargetsResult->NextToken;

    # Returns a L<Paws::SSM::DescribeAssociationExecutionTargetsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribeAssociationExecutionTargets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociationId => Str

The association ID that includes the execution for which you want to
view details.



=head2 B<REQUIRED> ExecutionId => Str

The execution ID for which you want to view details.



=head2 Filters => ArrayRef[SSM_AssociationExecutionTargetsFilter]

Filters for the request. You can specify the following filters and
values.

Status (EQUAL)

ResourceId (EQUAL)

ResourceType (EQUAL)



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

A token to start the list. Use this token to get the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAssociationExecutionTargets in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

