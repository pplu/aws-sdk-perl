package Paws::NetworkManager::Site;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has GlobalNetworkId => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Paws::NetworkManager::Location');
  has SiteArn => (is => 'ro', isa => 'Str');
  has SiteId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Tag]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::Site

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NetworkManager::Site object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NetworkManager::Site object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

Describes a site.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

  The date and time that the site was created.


=head2 Description => Str

  The description of the site.


=head2 GlobalNetworkId => Str

  The ID of the global network.


=head2 Location => L<Paws::NetworkManager::Location>

  The location of the site.


=head2 SiteArn => Str

  The Amazon Resource Name (ARN) of the site.


=head2 SiteId => Str

  The ID of the site.


=head2 State => Str

  The state of the site.


=head2 Tags => ArrayRef[L<Paws::NetworkManager::Tag>]

  The tags for the site.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

