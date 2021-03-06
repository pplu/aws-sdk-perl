# Generated by default/object.tt
package Paws::CloudWatchEvents::ConnectionHeaderParameter;
  use Moose;
  has IsValueSecret => (is => 'ro', isa => 'Bool');
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ConnectionHeaderParameter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::ConnectionHeaderParameter object:

  $service_obj->Method(Att1 => { IsValueSecret => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::ConnectionHeaderParameter object:

  $result = $service_obj->Method(...);
  $result->Att1->IsValueSecret

=head1 DESCRIPTION

Additional parameter included in the header. You can include up to 100
additional header parameters per request. An event payload cannot
exceed 64 KB.

=head1 ATTRIBUTES


=head2 IsValueSecret => Bool

Specified whether the value is a secret.


=head2 Key => Str

The key for the parameter.


=head2 Value => Str

The value associated with the key.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

