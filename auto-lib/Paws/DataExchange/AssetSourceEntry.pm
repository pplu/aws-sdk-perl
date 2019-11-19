# Generated from default/object.tt
package Paws::DataExchange::AssetSourceEntry;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DataExchange::Types qw//;
  has Bucket => (is => 'ro', isa => Str, required => 1);
  has Key => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Bucket' => {
                             'type' => 'Str'
                           },
               'Key' => {
                          'type' => 'Str'
                        }
             },
  'IsRequired' => {
                    'Key' => 1,
                    'Bucket' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::AssetSourceEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataExchange::AssetSourceEntry object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., Key => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataExchange::AssetSourceEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 DESCRIPTION

The source of the assets.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

  The S3 bucket that's part of the source of the asset.


=head2 B<REQUIRED> Key => Str

  The name of the object in Amazon S3 for the asset.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

