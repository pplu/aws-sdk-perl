package Paws::NetworkManager::Link;
  use Moose;
  has Bandwidth => (is => 'ro', isa => 'Paws::NetworkManager::Bandwidth');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has GlobalNetworkId => (is => 'ro', isa => 'Str');
  has LinkArn => (is => 'ro', isa => 'Str');
  has LinkId => (is => 'ro', isa => 'Str');
  has Provider => (is => 'ro', isa => 'Str');
  has SiteId => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Tag]');
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::Link

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NetworkManager::Link object:

  $service_obj->Method(Att1 => { Bandwidth => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NetworkManager::Link object:

  $result = $service_obj->Method(...);
  $result->Att1->Bandwidth

=head1 DESCRIPTION

Describes a link.

=head1 ATTRIBUTES


=head2 Bandwidth => L<Paws::NetworkManager::Bandwidth>

  The bandwidth for the link.


=head2 CreatedAt => Str

  The date and time that the link was created.


=head2 Description => Str

  The description of the link.


=head2 GlobalNetworkId => Str

  The ID of the global network.


=head2 LinkArn => Str

  The Amazon Resource Name (ARN) of the link.


=head2 LinkId => Str

  The ID of the link.


=head2 Provider => Str

  The provider of the link.


=head2 SiteId => Str

  The ID of the site.


=head2 State => Str

  The state of the link.


=head2 Tags => ArrayRef[L<Paws::NetworkManager::Tag>]

  The tags for the link.


=head2 Type => Str

  The type of the link.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

