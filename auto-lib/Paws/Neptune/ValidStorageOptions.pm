# Generated from default/object.tt
package Paws::Neptune::ValidStorageOptions;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::Neptune::Types qw/Neptune_DoubleRange Neptune_Range/;
  has IopsToStorageRatio => (is => 'ro', isa => ArrayRef[Neptune_DoubleRange]);
  has ProvisionedIops => (is => 'ro', isa => ArrayRef[Neptune_Range]);
  has StorageSize => (is => 'ro', isa => ArrayRef[Neptune_Range]);
  has StorageType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IopsToStorageRatio' => {
                                         'class' => 'Paws::Neptune::DoubleRange',
                                         'type' => 'ArrayRef[Neptune_DoubleRange]'
                                       },
               'ProvisionedIops' => {
                                      'class' => 'Paws::Neptune::Range',
                                      'type' => 'ArrayRef[Neptune_Range]'
                                    },
               'StorageSize' => {
                                  'type' => 'ArrayRef[Neptune_Range]',
                                  'class' => 'Paws::Neptune::Range'
                                },
               'StorageType' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'StorageSize' => 'Range',
                       'ProvisionedIops' => 'Range',
                       'IopsToStorageRatio' => 'DoubleRange'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::ValidStorageOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Neptune::ValidStorageOptions object:

  $service_obj->Method(Att1 => { IopsToStorageRatio => $value, ..., StorageType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Neptune::ValidStorageOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->IopsToStorageRatio

=head1 DESCRIPTION

Information about valid modifications that you can make to your DB
instance.

Contains the result of a successful call to the
DescribeValidDBInstanceModifications action.

=head1 ATTRIBUTES


=head2 IopsToStorageRatio => ArrayRef[Neptune_DoubleRange]

  The valid range of Provisioned IOPS to gibibytes of storage multiplier.
For example, 3-10, which means that provisioned IOPS can be between 3
and 10 times storage.


=head2 ProvisionedIops => ArrayRef[Neptune_Range]

  The valid range of provisioned IOPS. For example, 1000-20000.


=head2 StorageSize => ArrayRef[Neptune_Range]

  The valid range of storage in gibibytes. For example, 100 to 16384.


=head2 StorageType => Str

  The valid storage types for your DB instance. For example, gp2, io1.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

