# Generated from default/object.tt
package Paws::Datasync::PrivateLinkConfig;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Datasync::Types qw//;
  has PrivateLinkEndpoint => (is => 'ro', isa => Str);
  has SecurityGroupArns => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has SubnetArns => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PrivateLinkEndpoint' => {
                                          'type' => 'Str'
                                        },
               'SubnetArns' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'SecurityGroupArns' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::PrivateLinkConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Datasync::PrivateLinkConfig object:

  $service_obj->Method(Att1 => { PrivateLinkEndpoint => $value, ..., SubnetArns => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Datasync::PrivateLinkConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->PrivateLinkEndpoint

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 PrivateLinkEndpoint => Str

  


=head2 SecurityGroupArns => ArrayRef[Str|Undef]

  


=head2 SubnetArns => ArrayRef[Str|Undef]

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

