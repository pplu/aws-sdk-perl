package Paws::MobileHub::BundleDetails;
  use Moose;
  has AvailablePlatforms => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'availablePlatforms', traits => ['NameInRequest']);
  has BundleId => (is => 'ro', isa => 'Str', request_name => 'bundleId', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has IconUrl => (is => 'ro', isa => 'Str', request_name => 'iconUrl', traits => ['NameInRequest']);
  has Title => (is => 'ro', isa => 'Str', request_name => 'title', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub::BundleDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MobileHub::BundleDetails object:

  $service_obj->Method(Att1 => { AvailablePlatforms => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MobileHub::BundleDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailablePlatforms

=head1 DESCRIPTION

The details of the bundle.

=head1 ATTRIBUTES


=head2 AvailablePlatforms => ArrayRef[Str|Undef]

  


=head2 BundleId => Str

  


=head2 Description => Str

  


=head2 IconUrl => Str

  


=head2 Title => Str

  


=head2 Version => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MobileHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

