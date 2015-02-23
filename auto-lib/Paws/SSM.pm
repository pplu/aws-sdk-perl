
use Paws::API;


package Paws::SSM {
  use Moose;
  sub service { 'ssm' }
  sub version { '2014-11-06' }
  sub target_prefix { 'AmazonSSM' }
  sub json_version { "1.1" }

  with 'Paws::API::Caller', 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub CreateAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::CreateAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAssociationBatch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::CreateAssociationBatch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::CreateDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DeleteAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DeleteDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::GetDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::ListAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDocuments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::ListDocuments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssociationStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::UpdateAssociationStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM - Perl Interface to AWS Amazon Simple Systems Management Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



AWS Simple Systems Management enables you to configure and manage your
EC2 instances. You can create a configuration document and then
associate it with one or more running instances.

You can use a configuration document to automate the following tasks
for your Windows instances:

=over

=item *

Install, repair, or uninstall software using an MSI package

=item *

Run PowerShell scripts

=item *

Join an AWS Directory

=item *

Configure CloudWatch Logs to monitor applications and systems

=back

Note that configuration documents are not supported on Linux instances.










=head1 METHODS

=head2 CreateAssociation()

  Arguments described in: L<Paws::SSM::CreateAssociation>

  Returns: L<Paws::SSM::CreateAssociationResult>

  

Associates the specified configuration document with the specified
instance.

When you associate a configuration document with an instance, the
configuration agent on the instance processes the configuration
document and configures the instance as specified.

If you associate a configuration document with an instance that already
has an associated configuration document, we replace the current
configuration document with the new configuration document.











=head2 CreateAssociationBatch()

  Arguments described in: L<Paws::SSM::CreateAssociationBatch>

  Returns: L<Paws::SSM::CreateAssociationBatchResult>

  

Associates the specified configuration documents with the specified
instances.

When you associate a configuration document with an instance, the
configuration agent on the instance processes the configuration
document and configures the instance as specified.

If you associate a configuration document with an instance that already
has an associated configuration document, we replace the current
configuration document with the new configuration document.











=head2 CreateDocument()

  Arguments described in: L<Paws::SSM::CreateDocument>

  Returns: L<Paws::SSM::CreateDocumentResult>

  

Creates a configuration document.

After you create a configuration document, you can use
CreateAssociation to associate it with one or more running instances.











=head2 DeleteAssociation()

  Arguments described in: L<Paws::SSM::DeleteAssociation>

  Returns: L<Paws::SSM::DeleteAssociationResult>

  

Disassociates the specified configuration document from the specified
instance.

When you disassociate a configuration document from an instance, it
does not change the configuration of the instance. To change the
configuration state of an instance after you disassociate a
configuration document, you must create a new configuration document
with the desired configuration and associate it with the instance.











=head2 DeleteDocument()

  Arguments described in: L<Paws::SSM::DeleteDocument>

  Returns: L<Paws::SSM::DeleteDocumentResult>

  

Deletes the specified configuration document.

You must use DeleteAssociation to disassociate all instances that are
associated with the configuration document before you can delete it.











=head2 DescribeAssociation()

  Arguments described in: L<Paws::SSM::DescribeAssociation>

  Returns: L<Paws::SSM::DescribeAssociationResult>

  

Describes the associations for the specified configuration document or
instance.











=head2 DescribeDocument()

  Arguments described in: L<Paws::SSM::DescribeDocument>

  Returns: L<Paws::SSM::DescribeDocumentResult>

  

Describes the specified configuration document.











=head2 GetDocument()

  Arguments described in: L<Paws::SSM::GetDocument>

  Returns: L<Paws::SSM::GetDocumentResult>

  

Gets the contents of the specified configuration document.











=head2 ListAssociations()

  Arguments described in: L<Paws::SSM::ListAssociations>

  Returns: L<Paws::SSM::ListAssociationsResult>

  

Lists the associations for the specified configuration document or
instance.











=head2 ListDocuments()

  Arguments described in: L<Paws::SSM::ListDocuments>

  Returns: L<Paws::SSM::ListDocumentsResult>

  

Describes one or more of your configuration documents.











=head2 UpdateAssociationStatus()

  Arguments described in: L<Paws::SSM::UpdateAssociationStatus>

  Returns: L<Paws::SSM::UpdateAssociationStatusResult>

  

Updates the status of the configuration document associated with the
specified instance.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

