package Paws::EC2::PrefixList;
  use Moo;  use Types::Standard qw/ArrayRef Undef Str/;
  use Paws::EC2::Types qw//;
  has Cidrs => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has PrefixListId => (is => 'ro', isa => Str);
  has PrefixListName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Cidrs' => {
                            'type' => 'ArrayRef[Str|Undef]'
                          },
               'PrefixListId' => {
                                   'type' => 'Str'
                                 },
               'PrefixListName' => {
                                     'type' => 'Str'
                                   }
             },
  'NameInRequest' => {
                       'Cidrs' => 'cidrSet',
                       'PrefixListId' => 'prefixListId',
                       'PrefixListName' => 'prefixListName'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PrefixList

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::PrefixList object:

  $service_obj->Method(Att1 => { Cidrs => $value, ..., PrefixListName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::PrefixList object:

  $result = $service_obj->Method(...);
  $result->Att1->Cidrs

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Cidrs => ArrayRef[Str|Undef]

  The IP address range of the AWS service.


=head2 PrefixListId => Str

  The ID of the prefix.


=head2 PrefixListName => Str

  The name of the prefix.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
