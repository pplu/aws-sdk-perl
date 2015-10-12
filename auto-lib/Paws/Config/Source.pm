package Paws::Config::Source;
  use Moose;
  has Owner => (is => 'ro', isa => 'Str');
  has SourceDetails => (is => 'ro', isa => 'ArrayRef[Paws::Config::SourceDetail]');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::Source

=head1 DESCRIPTION

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

=head1 ATTRIBUTES

=head2 Owner => Str

  Indicates whether AWS or the customer owns and manages the AWS Config
rule.

=head2 SourceDetails => ArrayRef[L<Paws::Config::SourceDetail>]

  Provides the source and type of the event that causes AWS Config to
evaluate your AWS resources.

=head2 SourceIdentifier => Str

  For AWS managed Config rules, a pre-defined identifier from a list. To
reference the list, see Using AWS Managed Config Rules.

For customer managed Config rules, the identifier is the Amazon
Resource Name (ARN) of the rule's AWS Lambda function.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

