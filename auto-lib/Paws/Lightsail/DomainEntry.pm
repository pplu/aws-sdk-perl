package Paws::Lightsail::DomainEntry;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has IsAlias => (is => 'ro', isa => 'Bool', request_name => 'isAlias', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Options => (is => 'ro', isa => 'Paws::Lightsail::DomainEntryOptions', request_name => 'options', traits => ['NameInRequest']);
  has Target => (is => 'ro', isa => 'Str', request_name => 'target', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
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


=head2 IsAlias => Bool

  When C<true>, specifies whether the domain entry is an alias used by
the Lightsail load balancer. You can include an alias (A type) record
in your request, which points to a load balancer DNS name and routes
traffic to your load balancer


=head2 Name => Str

  The name of the domain.


=head2 Options => L<Paws::Lightsail::DomainEntryOptions>

  (Deprecated) The options for the domain entry.

In releases prior to November 29, 2017, this parameter was not included
in the API response. It is now deprecated.


=head2 Target => Str

  The target AWS name server (e.g., C<ns-111.awsdns-22.com.>).

For Lightsail load balancers, the value looks like
C<ab1234c56789c6b86aba6fb203d443bc-123456789.us-east-2.elb.amazonaws.com>.
Be sure to also set C<isAlias> to C<true> when setting up an A record
for a load balancer.


=head2 Type => Str

  The type of domain entry (e.g., C<SOA> or C<NS>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

