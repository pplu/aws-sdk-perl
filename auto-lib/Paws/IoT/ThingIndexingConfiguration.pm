package Paws::IoT::ThingIndexingConfiguration;
  use Moose;
  has ThingConnectivityIndexingMode => (is => 'ro', isa => 'Str', request_name => 'thingConnectivityIndexingMode', traits => ['NameInRequest']);
  has ThingIndexingMode => (is => 'ro', isa => 'Str', request_name => 'thingIndexingMode', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ThingIndexingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ThingIndexingConfiguration object:

  $service_obj->Method(Att1 => { ThingConnectivityIndexingMode => $value, ..., ThingIndexingMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ThingIndexingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ThingConnectivityIndexingMode

=head1 DESCRIPTION

The thing indexing configuration. For more information, see Managing
Thing Indexing
(https://docs.aws.amazon.com/iot/latest/developerguide/managing-index.html).

=head1 ATTRIBUTES


=head2 ThingConnectivityIndexingMode => Str

  Thing connectivity indexing mode. Valid values are:

=over

=item *

STATUS E<ndash> Your thing index will contain connectivity status. In
order to enable thing connectivity indexing, thingIndexMode must not be
set to OFF.

=item *

OFF - Thing connectivity status indexing is disabled.

=back



=head2 B<REQUIRED> ThingIndexingMode => Str

  Thing indexing mode. Valid values are:

=over

=item *

REGISTRY E<ndash> Your thing index will contain only registry data.

=item *

REGISTRY_AND_SHADOW - Your thing index will contain registry and shadow
data.

=item *

OFF - Thing indexing is disabled.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

