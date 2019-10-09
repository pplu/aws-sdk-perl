package Paws::S3::Object;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::S3::Types qw/S3_Owner/;
  has ETag => (is => 'ro', isa => Str);
  has Key => (is => 'ro', isa => Str);
  has LastModified => (is => 'ro', isa => Str);
  has Owner => (is => 'ro', isa => S3_Owner);
  has Size => (is => 'ro', isa => Int);
  has StorageClass => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Owner' => {
                            'class' => 'Paws::S3::Owner',
                            'type' => 'S3_Owner'
                          },
               'Size' => {
                           'type' => 'Int'
                         },
               'ETag' => {
                           'type' => 'Str'
                         },
               'StorageClass' => {
                                   'type' => 'Str'
                                 },
               'Key' => {
                          'type' => 'Str'
                        },
               'LastModified' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::Object

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::Object object:

  $service_obj->Method(Att1 => { ETag => $value, ..., StorageClass => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::Object object:

  $result = $service_obj->Method(...);
  $result->Att1->ETag

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ETag => Str

  


=head2 Key => Str

  


=head2 LastModified => Str

  


=head2 Owner => S3_Owner

  


=head2 Size => Int

  


=head2 StorageClass => Str

  The class of storage used to store the object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

