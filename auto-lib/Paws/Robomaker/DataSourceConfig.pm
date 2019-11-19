# Generated from default/object.tt
package Paws::Robomaker::DataSourceConfig;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::Robomaker::Types qw//;
  has Name => (is => 'ro', isa => Str, required => 1);
  has S3Bucket => (is => 'ro', isa => Str, required => 1);
  has S3Keys => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'S3Keys' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'S3Bucket' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'S3Keys' => 's3Keys',
                       'Name' => 'name',
                       'S3Bucket' => 's3Bucket'
                     },
  'IsRequired' => {
                    'S3Keys' => 1,
                    'Name' => 1,
                    'S3Bucket' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DataSourceConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::DataSourceConfig object:

  $service_obj->Method(Att1 => { Name => $value, ..., S3Keys => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::DataSourceConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Information about a data source.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of the data source.


=head2 B<REQUIRED> S3Bucket => Str

  The S3 bucket where the data files are located.


=head2 B<REQUIRED> S3Keys => ArrayRef[Str|Undef]

  The list of S3 keys identifying the data source files.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

