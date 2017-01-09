package Paws::Lightsail::DomainEntry;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', xmlname => 'id', request_name => 'id', traits => ['Unwrapped','NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest']);
  has Options => (is => 'ro', isa => 'Paws::Lightsail::DomainEntryOptions', xmlname => 'options', request_name => 'options', traits => ['Unwrapped','NameInRequest']);
  has Target => (is => 'ro', isa => 'Str', xmlname => 'target', request_name => 'target', traits => ['Unwrapped','NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', xmlname => 'type', request_name => 'type', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DomainEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::DomainEntry object:

  $service_obj->Method(Att1 => { Id => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::DomainEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

Describes a domain recordset entry.

=head1 ATTRIBUTES


=head2 Id => Str

  The ID of the domain recordset entry.


=head2 Name => Str

  The name of the domain.


=head2 Options => L<Paws::Lightsail::DomainEntryOptions>

  The options for the domain entry.


=head2 Target => Str

  The target AWS name server (e.g., C<ns-111.awsdns-22.com.>).


=head2 Type => Str

  The type of domain entry (e.g., C<SOA> or C<NS>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

