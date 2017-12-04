package Paws::Inspector::FindingFilter;
  use Moose;
  has AgentIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'agentIds', traits => ['NameInRequest']);
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Attribute]', request_name => 'attributes', traits => ['NameInRequest']);
  has AutoScalingGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'autoScalingGroups', traits => ['NameInRequest']);
  has CreationTimeRange => (is => 'ro', isa => 'Paws::Inspector::TimestampRange', request_name => 'creationTimeRange', traits => ['NameInRequest']);
  has RuleNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'ruleNames', traits => ['NameInRequest']);
  has RulesPackageArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'rulesPackageArns', traits => ['NameInRequest']);
  has Severities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'severities', traits => ['NameInRequest']);
  has UserAttributes => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Attribute]', request_name => 'userAttributes', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::FindingFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::FindingFilter object:

  $service_obj->Method(Att1 => { AgentIds => $value, ..., UserAttributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::FindingFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->AgentIds

=head1 DESCRIPTION

This data type is used as a request parameter in the ListFindings
action.

=head1 ATTRIBUTES


=head2 AgentIds => ArrayRef[Str|Undef]

  For a record to match a filter, one of the values that is specified for
this data type property must be the exact match of the value of the
B<agentId> property of the Finding data type.


=head2 Attributes => ArrayRef[L<Paws::Inspector::Attribute>]

  For a record to match a filter, the list of values that are specified
for this data type property must be contained in the list of values of
the B<attributes> property of the Finding data type.


=head2 AutoScalingGroups => ArrayRef[Str|Undef]

  For a record to match a filter, one of the values that is specified for
this data type property must be the exact match of the value of the
B<autoScalingGroup> property of the Finding data type.


=head2 CreationTimeRange => L<Paws::Inspector::TimestampRange>

  The time range during which the finding is generated.


=head2 RuleNames => ArrayRef[Str|Undef]

  For a record to match a filter, one of the values that is specified for
this data type property must be the exact match of the value of the
B<ruleName> property of the Finding data type.


=head2 RulesPackageArns => ArrayRef[Str|Undef]

  For a record to match a filter, one of the values that is specified for
this data type property must be the exact match of the value of the
B<rulesPackageArn> property of the Finding data type.


=head2 Severities => ArrayRef[Str|Undef]

  For a record to match a filter, one of the values that is specified for
this data type property must be the exact match of the value of the
B<severity> property of the Finding data type.


=head2 UserAttributes => ArrayRef[L<Paws::Inspector::Attribute>]

  For a record to match a filter, the value that is specified for this
data type property must be contained in the list of values of the
B<userAttributes> property of the Finding data type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

