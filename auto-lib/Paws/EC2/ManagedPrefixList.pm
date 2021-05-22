package Paws::EC2::ManagedPrefixList;
  use Moose;
  has AddressFamily => (is => 'ro', isa => 'Str', request_name => 'addressFamily', traits => ['NameInRequest']);
  has MaxEntries => (is => 'ro', isa => 'Int', request_name => 'maxEntries', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has PrefixListArn => (is => 'ro', isa => 'Str', request_name => 'prefixListArn', traits => ['NameInRequest']);
  has PrefixListId => (is => 'ro', isa => 'Str', request_name => 'prefixListId', traits => ['NameInRequest']);
  has PrefixListName => (is => 'ro', isa => 'Str', request_name => 'prefixListName', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has StateMessage => (is => 'ro', isa => 'Str', request_name => 'stateMessage', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Int', request_name => 'version', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ManagedPrefixList

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ManagedPrefixList object:

  $service_obj->Method(Att1 => { AddressFamily => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ManagedPrefixList object:

  $result = $service_obj->Method(...);
  $result->Att1->AddressFamily

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AddressFamily => Str

The IP address version.


=head2 MaxEntries => Int

The maximum number of entries for the prefix list.


=head2 OwnerId => Str

The ID of the owner of the prefix list.


=head2 PrefixListArn => Str

The Amazon Resource Name (ARN) for the prefix list.


=head2 PrefixListId => Str

The ID of the prefix list.


=head2 PrefixListName => Str

The name of the prefix list.


=head2 State => Str

The state of the prefix list.


=head2 StateMessage => Str

The state message.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags for the prefix list.


=head2 Version => Int

The version of the prefix list.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
