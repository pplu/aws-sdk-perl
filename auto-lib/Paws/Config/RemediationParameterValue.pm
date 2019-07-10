package Paws::Config::RemediationParameterValue;
  use Moose;
  has ResourceValue => (is => 'ro', isa => 'Paws::Config::ResourceValue');
  has StaticValue => (is => 'ro', isa => 'Paws::Config::StaticValue');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::RemediationParameterValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::RemediationParameterValue object:

  $service_obj->Method(Att1 => { ResourceValue => $value, ..., StaticValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::RemediationParameterValue object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceValue

=head1 DESCRIPTION

The value is either a dynamic (resource) value or a static value. You
must select either a dynamic value or a static value.

=head1 ATTRIBUTES


=head2 ResourceValue => L<Paws::Config::ResourceValue>

  The value is dynamic and changes at run-time.


=head2 StaticValue => L<Paws::Config::StaticValue>

  The value is static and does not change at run-time.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

