package Paws::Config::Scope;
  use Moose;
  has ComplianceResourceId => (is => 'ro', isa => 'Str');
  has ComplianceResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
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

Defines which resources trigger an evaluation for an AWS Config rule.
The scope can include one or more resource types, a combination of a
tag key and value, or a combination of one resource type and one
resource ID. Specify a scope to constrain which resources trigger an
evaluation for a rule. Otherwise, evaluations for the rule are
triggered when any resource in your recording group changes in
configuration.

=head1 ATTRIBUTES


=head2 ComplianceResourceId => Str

  The ID of the only AWS resource that you want to trigger an evaluation
for the rule. If you specify a resource ID, you must specify one
resource type for C<ComplianceResourceTypes>.


=head2 ComplianceResourceTypes => ArrayRef[Str|Undef]

  The resource types of only those AWS resources that you want to trigger
an evaluation for the rule. You can only specify one type if you also
specify a resource ID for C<ComplianceResourceId>.


=head2 TagKey => Str

  The tag key that is applied to only those AWS resources that you want
to trigger an evaluation for the rule.


=head2 TagValue => Str

  The tag value applied to only those AWS resources that you want to
trigger an evaluation for the rule. If you specify a value for
C<TagValue>, you must also specify a value for C<TagKey>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

