# Generated by default/object.tt
package Paws::IoTSiteWise::AssetPropertyValue;
  use Moose;
  has Quality => (is => 'ro', isa => 'Str', request_name => 'quality', traits => ['NameInRequest']);
  has Timestamp => (is => 'ro', isa => 'Paws::IoTSiteWise::TimeInNanos', request_name => 'timestamp', traits => ['NameInRequest'], required => 1);
  has Value => (is => 'ro', isa => 'Paws::IoTSiteWise::Variant', request_name => 'value', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::AssetPropertyValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTSiteWise::AssetPropertyValue object:

  $service_obj->Method(Att1 => { Quality => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTSiteWise::AssetPropertyValue object:

  $result = $service_obj->Method(...);
  $result->Att1->Quality

=head1 DESCRIPTION

Contains asset property value information.

=head1 ATTRIBUTES


=head2 Quality => Str

The quality of the asset property value.


=head2 B<REQUIRED> Timestamp => L<Paws::IoTSiteWise::TimeInNanos>

The timestamp of the asset property value.


=head2 B<REQUIRED> Value => L<Paws::IoTSiteWise::Variant>

The value of the asset property (see C<Variant>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

