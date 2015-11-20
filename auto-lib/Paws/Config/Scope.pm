package Paws::Config::Scope;
  use Moose;
  has ComplianceResourceId => (is => 'ro', isa => 'Str');
  has ComplianceResourceTypes => (is => 'ro', isa => 'ArrayRef[Str]');
  has TagKey => (is => 'ro', isa => 'Str');
  has TagValue => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::Scope

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::Scope object:

  $service_obj->Method(Att1 => { ComplianceResourceId => $value, ..., TagValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::Scope object:

  $result = $service_obj->Method(...);
  $result->Att1->ComplianceResourceId

=head1 DESCRIPTION

Defines which resources AWS Config evaluates against a rule. The scope
can include one or more resource types, a combination of a tag key and
value, or a combination of one resource type and one or more resource
IDs. Specify a scope to constrain the resources to be evaluated. If you
do not specify a scope, all resources in your recording group are
evaluated against the rule.

=head1 ATTRIBUTES


=head2 ComplianceResourceId => Str

  The IDs of only those AWS resources that you want AWS Config to
evaluate against the rule. If you specify a resource ID, you must
specify one resource type for C<ComplianceResourceTypes>.


=head2 ComplianceResourceTypes => ArrayRef[Str]

  The resource types of only those AWS resources that you want AWS Config
to evaluate against the rule. You can specify only one type if you also
specify resource IDs for C<ComplianceResourceId>.


=head2 TagKey => Str

  The tag key that is applied to only those AWS resources that you want
AWS Config to evaluate against the rule.


=head2 TagValue => Str

  The tag value applied to only those AWS resources that you want AWS
Config to evaluate against the rule. If you specify a value for
C<TagValue>, you must also specify a value for C<TagKey>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

