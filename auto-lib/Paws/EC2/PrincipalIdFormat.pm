package Paws::EC2::PrincipalIdFormat;
  use Moo;  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_IdFormat/;
  has Arn => (is => 'ro', isa => Str);
  has Statuses => (is => 'ro', isa => ArrayRef[EC2_IdFormat]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Statuses' => {
                               'class' => 'Paws::EC2::IdFormat',
                               'type' => 'ArrayRef[EC2_IdFormat]'
                             },
               'Arn' => {
                          'type' => 'Str'
                        }
             },
  'NameInRequest' => {
                       'Statuses' => 'statusSet',
                       'Arn' => 'arn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PrincipalIdFormat

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::PrincipalIdFormat object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Statuses => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::PrincipalIdFormat object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Arn => Str

  PrincipalIdFormatARN description


=head2 Statuses => ArrayRef[EC2_IdFormat]

  PrincipalIdFormatStatuses description



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
