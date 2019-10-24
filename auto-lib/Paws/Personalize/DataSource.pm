# Generated from default/object.tt
package Paws::Personalize::DataSource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has DataLocation => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DataLocation' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'DataLocation' => 'dataLocation'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DataSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::DataSource object:

  $service_obj->Method(Att1 => { DataLocation => $value, ..., DataLocation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::DataSource object:

  $result = $service_obj->Method(...);
  $result->Att1->DataLocation

=head1 DESCRIPTION

Describes the data source that contains the data to upload to a
dataset.

=head1 ATTRIBUTES


=head2 DataLocation => Str

  The path to the Amazon S3 bucket where the data that you want to upload
to your dataset is stored. For example:

C<s3://bucket-name/training-data.csv>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

