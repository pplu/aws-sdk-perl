package Paws::Config::ConfigSnapshotDeliveryProperties;
  use Moose;
  has DeliveryFrequency => (is => 'ro', isa => 'Str', xmlname => 'deliveryFrequency', request_name => 'deliveryFrequency', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ConfigSnapshotDeliveryProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ConfigSnapshotDeliveryProperties object:

  $service_obj->Method(Att1 => { DeliveryFrequency => $value, ..., DeliveryFrequency => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConfigSnapshotDeliveryProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->DeliveryFrequency

=head1 DESCRIPTION

Options for how AWS Config delivers configuration snapshots to the
Amazon S3 bucket in your delivery channel.

=head1 ATTRIBUTES

=head2 DeliveryFrequency => Str

  The frequency with which a AWS Config recurringly delivers
configuration snapshots.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

