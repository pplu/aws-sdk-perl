# Generated from default/object.tt
package Paws::Robomaker::DataSource;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_S3KeyOutput/;
  has Name => (is => 'ro', isa => Str);
  has S3Bucket => (is => 'ro', isa => Str);
  has S3Keys => (is => 'ro', isa => ArrayRef[Robomaker_S3KeyOutput]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'S3Keys' => {
                             'type' => 'ArrayRef[Robomaker_S3KeyOutput]',
                             'class' => 'Paws::Robomaker::S3KeyOutput'
                           },
               'Name' => {
                           'type' => 'Str'
                         },
               'S3Bucket' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'S3Bucket' => 's3Bucket',
                       'Name' => 'name',
                       'S3Keys' => 's3Keys'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DataSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::DataSource object:

  $service_obj->Method(Att1 => { Name => $value, ..., S3Keys => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::DataSource object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Information about a data source.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the data source.


=head2 S3Bucket => Str

  The S3 bucket where the data files are located.


=head2 S3Keys => ArrayRef[Robomaker_S3KeyOutput]

  The list of S3 keys identifying the data source files.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

