# Generated from default/object.tt
package Paws::RedShift::HsmConfiguration;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_Tag/;
  has Description => (is => 'ro', isa => Str);
  has HsmConfigurationIdentifier => (is => 'ro', isa => Str);
  has HsmIpAddress => (is => 'ro', isa => Str);
  has HsmPartitionName => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[RedShift_Tag]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'Tag'
                     },
  'types' => {
               'Tags' => {
                           'type' => 'ArrayRef[RedShift_Tag]',
                           'class' => 'Paws::RedShift::Tag'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'HsmPartitionName' => {
                                       'type' => 'Str'
                                     },
               'HsmConfigurationIdentifier' => {
                                                 'type' => 'Str'
                                               },
               'HsmIpAddress' => {
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

Paws::RedShift::HsmConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::HsmConfiguration object:

  $service_obj->Method(Att1 => { Description => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::HsmConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Returns information about an HSM configuration, which is an object that
describes to Amazon Redshift clusters the information they require to
connect to an HSM where they can store database encryption keys.

=head1 ATTRIBUTES


=head2 Description => Str

  A text description of the HSM configuration.


=head2 HsmConfigurationIdentifier => Str

  The name of the Amazon Redshift HSM configuration.


=head2 HsmIpAddress => Str

  The IP address that the Amazon Redshift cluster must use to access the
HSM.


=head2 HsmPartitionName => Str

  The name of the partition in the HSM where the Amazon Redshift clusters
will store their database encryption keys.


=head2 Tags => ArrayRef[RedShift_Tag]

  The list of tags for the HSM configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

