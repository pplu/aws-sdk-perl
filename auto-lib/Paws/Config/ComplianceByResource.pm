package Paws::Config::ComplianceByResource;
  use Moose;
  has Compliance => (is => 'ro', isa => 'Paws::Config::Compliance');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ComplianceByResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ComplianceByResource object:

  $service_obj->Method(Att1 => { Compliance => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ComplianceByResource object:

  $result = $service_obj->Method(...);
  $result->Att1->Compliance

=head1 DESCRIPTION

Indicates whether an AWS resource that is evaluated according to one or
more AWS Config rules is compliant. A resource is compliant if it
complies with all of the rules that evaluate it. A resource is
noncompliant if it does not comply with one or more of these rules.

=head1 ATTRIBUTES


=head2 Compliance => L<Paws::Config::Compliance>

  Indicates whether the AWS resource complies with all of the AWS Config
rules that evaluated it.


=head2 ResourceId => Str

  The ID of the AWS resource that was evaluated.


=head2 ResourceType => Str

  The type of the AWS resource that was evaluated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

