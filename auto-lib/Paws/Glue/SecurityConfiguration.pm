package Paws::Glue::SecurityConfiguration;
  use Moose;
  has CreatedTimeStamp => (is => 'ro', isa => 'Str');
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::Glue::EncryptionConfiguration');
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::SecurityConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::SecurityConfiguration object:

  $service_obj->Method(Att1 => { CreatedTimeStamp => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::SecurityConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTimeStamp

=head1 DESCRIPTION

Specifies a security configuration.

=head1 ATTRIBUTES


=head2 CreatedTimeStamp => Str

  The time at which this security configuration was created.


=head2 EncryptionConfiguration => L<Paws::Glue::EncryptionConfiguration>

  The encryption configuration associated with this security
configuration.


=head2 Name => Str

  The name of the security configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

