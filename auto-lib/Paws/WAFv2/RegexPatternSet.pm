package Paws::WAFv2::RegexPatternSet;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RegularExpressionList => (is => 'ro', isa => 'ArrayRef[Paws::WAFv2::Regex]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::RegexPatternSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFv2::RegexPatternSet object:

  $service_obj->Method(Att1 => { ARN => $value, ..., RegularExpressionList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFv2::RegexPatternSet object:

  $result = $service_obj->Method(...);
  $result->Att1->ARN

=head1 DESCRIPTION

This is the latest version of B<AWS WAF>, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

Contains one or more regular expressions.

AWS WAF assigns an ARN to each C<RegexPatternSet> that you create. To
use a set in a rule, you provide the ARN to the Rule statement
RegexPatternSetReferenceStatement.

=head1 ATTRIBUTES


=head2 ARN => Str

  The Amazon Resource Name (ARN) of the entity.


=head2 Description => Str

  A friendly description of the set. You cannot change the description of
a set after you create it.


=head2 Id => Str

  A unique identifier for the set. This ID is returned in the responses
to create and list commands. You provide it to operations like update
and delete.


=head2 Name => Str

  A friendly name of the set. You cannot change the name after you create
the set.


=head2 RegularExpressionList => ArrayRef[L<Paws::WAFv2::Regex>]

  The regular expression patterns in the set.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

