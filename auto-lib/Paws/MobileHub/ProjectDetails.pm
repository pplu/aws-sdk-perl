package Paws::MobileHub::ProjectDetails;
  use Moose;
  has ConsoleUrl => (is => 'ro', isa => 'Str', request_name => 'consoleUrl', traits => ['NameInRequest']);
  has CreatedDate => (is => 'ro', isa => 'Str', request_name => 'createdDate', traits => ['NameInRequest']);
  has LastUpdatedDate => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedDate', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has ProjectId => (is => 'ro', isa => 'Str', request_name => 'projectId', traits => ['NameInRequest']);
  has Region => (is => 'ro', isa => 'Str', request_name => 'region', traits => ['NameInRequest']);
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::MobileHub::Resource]', request_name => 'resources', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub::ProjectDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MobileHub::ProjectDetails object:

  $service_obj->Method(Att1 => { ConsoleUrl => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MobileHub::ProjectDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->ConsoleUrl

=head1 DESCRIPTION

Detailed information about an AWS Mobile Hub project.

=head1 ATTRIBUTES


=head2 ConsoleUrl => Str

  Website URL for this project in the AWS Mobile Hub console.


=head2 CreatedDate => Str

  Date the project was created.


=head2 LastUpdatedDate => Str

  Date of the last modification of the project.


=head2 Name => Str

  


=head2 ProjectId => Str

  


=head2 Region => Str

  


=head2 Resources => ArrayRef[L<Paws::MobileHub::Resource>]

  


=head2 State => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MobileHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

