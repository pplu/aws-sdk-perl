package Paws::CloudWatch::InsightRule;
  use Moose;
  has Definition => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Schema => (is => 'ro', isa => 'Str', required => 1);
  has State => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::InsightRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::InsightRule object:

  $service_obj->Method(Att1 => { Definition => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::InsightRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Definition

=head1 DESCRIPTION

This structure contains the definition for a Contributor Insights rule.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Definition => Str

  The definition of the rule, as a JSON object. The definition contains
the keywords used to define contributors, the value to aggregate on if
this rule returns a sum instead of a count, and the filters. For
details on the valid syntax, see Contributor Insights Rule Syntax
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights-RuleSyntax.html).


=head2 B<REQUIRED> Name => Str

  The name of the rule.


=head2 B<REQUIRED> Schema => Str

  For rules that you create, this is always C<{"Name":
"CloudWatchLogRule", "Version": 1}>. For built-in rules, this is
C<{"Name": "ServiceLogRule", "Version": 1}>


=head2 B<REQUIRED> State => Str

  Indicates whether the rule is enabled or disabled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

