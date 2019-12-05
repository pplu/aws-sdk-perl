package Paws::Quicksight::ResourcePermission;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Principal => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::ResourcePermission

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::ResourcePermission object:

  $service_obj->Method(Att1 => { Actions => $value, ..., Principal => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::ResourcePermission object:

  $result = $service_obj->Method(...);
  $result->Att1->Actions

=head1 DESCRIPTION

Permission for the resource.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => ArrayRef[Str|Undef]

  The action to grant or revoke permissions on. For example,
"quicksight:DescribeDashboard".


=head2 B<REQUIRED> Principal => Str

  The Amazon Resource Name (ARN) of a QuickSight user or group, or an IAM
ARN. If you are using cross-account resource sharing, this is the IAM
ARN of an account root. Otherwise, it is the ARN of a QuickSight user
or group. .



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

