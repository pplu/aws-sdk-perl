# Generated from json/callargs_class.tt

package Paws::ECS::SubmitAttachmentStateChanges;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECS::Types qw/ECS_AttachmentStateChange/;
  has Attachments => (is => 'ro', isa => ArrayRef[ECS_AttachmentStateChange], required => 1, predicate => 1);
  has Cluster => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'SubmitAttachmentStateChanges');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ECS::SubmitAttachmentStateChangesResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Attachments' => 'attachments',
                       'Cluster' => 'cluster'
                     },
  'IsRequired' => {
                    'Attachments' => 1
                  },
  'types' => {
               'Attachments' => {
                                  'type' => 'ArrayRef[ECS_AttachmentStateChange]',
                                  'class' => 'Paws::ECS::AttachmentStateChange'
                                },
               'Cluster' => {
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

Paws::ECS::SubmitAttachmentStateChanges - Arguments for method SubmitAttachmentStateChanges on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SubmitAttachmentStateChanges on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method SubmitAttachmentStateChanges.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SubmitAttachmentStateChanges.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $SubmitAttachmentStateChangesResponse =
      $ecs->SubmitAttachmentStateChanges(
      Attachments => [
        {
          AttachmentArn => 'MyString',
          Status        => 'MyString',

        },
        ...
      ],
      Cluster => 'MyString',    # OPTIONAL
      );

    # Results:
    my $Acknowledgment = $SubmitAttachmentStateChangesResponse->Acknowledgment;

    # Returns a L<Paws::ECS::SubmitAttachmentStateChangesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/SubmitAttachmentStateChanges>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attachments => ArrayRef[ECS_AttachmentStateChange]

Any attachments associated with the state change request.



=head2 Cluster => Str

The short name or full ARN of the cluster that hosts the container
instance the attachment belongs to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SubmitAttachmentStateChanges in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

