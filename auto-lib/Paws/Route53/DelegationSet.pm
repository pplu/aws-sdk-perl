package Paws::Route53::DelegationSet;
  use Moose;
  has CallerReference => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has NameServers => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::DelegationSet

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::DelegationSet object:

  $service_obj->Method(Att1 => { CallerReference => $value, ..., NameServers => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::DelegationSet object:

  $result = $service_obj->Method(...);
  $result->Att1->CallerReference

=head1 ATTRIBUTES

=head2 CallerReference => Str

  

=head2 Id => Str

  

=head2 B<REQUIRED> NameServers => ArrayRef[Str]

  A complex type that contains the authoritative name servers for the
hosted zone. Use the method provided by your domain registrar to add an
NS record to your domain for each C<NameServer> that is assigned to
your hosted zone.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

