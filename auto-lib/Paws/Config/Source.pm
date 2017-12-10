package Paws::Config::Source;
  use Moose;
  has Owner => (is => 'ro', isa => 'Str', required => 1);
  has SourceDetails => (is => 'ro', isa => 'ArrayRef[Paws::Config::SourceDetail]');
  has SourceIdentifier => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::Source

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::Source object:

  $service_obj->Method(Att1 => { Owner => $value, ..., SourceIdentifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::Source object:

  $result = $service_obj->Method(...);
  $result->Att1->Owner

=head1 DESCRIPTION

Provides the AWS Config rule owner (AWS or customer), the rule
identifier, and the events that trigger the evaluation of your AWS
resources.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Owner => Str

  Indicates whether AWS or the customer owns and manages the AWS Config
rule.


=head2 SourceDetails => ArrayRef[L<Paws::Config::SourceDetail>]

  Provides the source and type of the event that causes AWS Config to
evaluate your AWS resources.


=head2 B<REQUIRED> SourceIdentifier => Str

  For AWS Config managed rules, a predefined identifier from a list. For
example, C<IAM_PASSWORD_POLICY> is a managed rule. To reference a
managed rule, see Using AWS Managed Config Rules
(http://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html).

For custom rules, the identifier is the Amazon Resource Name (ARN) of
the rule's AWS Lambda function, such as
C<arn:aws:lambda:us-east-2:123456789012:function:custom_rule_name>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

